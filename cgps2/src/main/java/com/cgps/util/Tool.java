package com.cgps.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Tool {

    /**
     * 格式化时间
     * */
    public String formatDate(Date date){
        DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //HH表示24小时制；
        return dFormat.format(date);
    }
}
