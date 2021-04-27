/**
 * 验证码
 * @param {Object} o 验证码长度
 */
coco.init();        // 初始化模态框
let captcha_ = null;    // 存放验证码
let path = $("#path").val();    // 拿取当前项目绝对路径
$.fn.code_Obj = function (o) {
    let _this = $(this);
    let options = {     // 生成验证码
        code_l: o.codeLength,//验证码长度
        codeChars: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
        ],
        codeColors: ['#f44336', '#009688', '#cddc39', '#03a9f4', '#9c27b0', '#5e4444', '#9ebf9f', '#ffc8c4', '#2b4754', '#b4ced9', '#835f53', '#aa677e'],
        code_Init: function () {
            let code = "";
            let codeColor = "";
            let checkCode = _this.find("#data_code");
            for (let i = 0; i < this.code_l; i++) {
                let charNum = Math.floor(Math.random() * 52);
                code += this.codeChars[charNum];
            }
            for (let i = 0; i < this.codeColors.length; i++) {
                let charNum = Math.floor(Math.random() * 12);
                codeColor = this.codeColors[charNum];
            }
            if (checkCode) {
                checkCode.css('color', codeColor);
                checkCode.className = "code";
                checkCode.text(code);
                checkCode.attr('data-value', code);
            }
            captcha_ = code;
        }
    };

    options.code_Init();//初始化验证码
    _this.find("#data_code").bind('click', function () {
        options.code_Init();
    });

    /**
     * 账号、密码、判空操作
     * */
    $("button").bind('click', function () {     // 验证用户输入
        testUser();
        options.code_Init();
    });
    $(document).keyup(function(event){
        if(event.keyCode ==13){
            testUser();
            options.code_Init();
        }
    });
};
/**
 * 验证码
 * codeLength:验证码长度
 */
$('#check-code').code_Obj({
    codeLength: 5
});

/**
 * 验证用户登录
* */
function testUser() {
    let usercode = null;
    let password = null;
    let captcha = null;

    usercode = $("input[name=username]").val();
    password = $("input[name=password]").val();
    captcha = $("input[name=captcha]").val();

    if (password == "" || username == "" || captcha == "") {
        coco.alert("用户名、密码、验证码皆不能为空！");
    } else if (username.length < 5) {
        coco.alert("用户名至少输入5位");
    } else if (password.length < 6) {
        coco.alert("密码至少输入6位");
    } else if (captcha.toLowerCase() != captcha_.toLowerCase()) {
        coco.alert("验证码输入错误");
    } else {
        $.post({
            url: path + "/dologin",
            data: {"userCode": usercode, "userPassword": password},
            datatype: "text",
            success: function (value) {
                if ("exist" == value) {
                    location.href = path+"/index";
                } else if ("noexist" == value) {
                    coco.alert("登录失败，请检查用户名和密码");
                }
            }
        })
    }
}

