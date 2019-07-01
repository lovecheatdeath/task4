package com.jnshu.service.serviceImpl;

import com.jnshu.mapper.StudentMapper;
import com.jnshu.service.StudentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    StudentMapper studentMapper;

    @Override
    public List upLoadStudent(@Param("status")Integer status){
        return studentMapper.upLoadStudent(status);
    }

}
