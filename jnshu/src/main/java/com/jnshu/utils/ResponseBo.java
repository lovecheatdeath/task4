package com.jnshu.utils;

import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class ResponseBo {
    @Autowired
    private MessageSource messageSource;

    public Map msg(String msg) {
        Gson gson = new Gson();
        msg = messageSource.getMessage(msg,null, null);
        Map map = gson.fromJson(msg, Map.class);
        return map;
    }

    public Map msg(String msg, Object data) {
        Gson gson = new Gson();
        msg = messageSource.getMessage(msg,null, null);
        Map<String, Object> map = gson.fromJson(msg, Map.class);
        map.put("data",data);
        return map;
    }
}
