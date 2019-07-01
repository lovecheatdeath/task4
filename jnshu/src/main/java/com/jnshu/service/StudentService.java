package com.jnshu.service;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentService {
    List upLoadStudent(@Param("status")Integer status);
}
