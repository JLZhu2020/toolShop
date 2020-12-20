package com.seproject.service;

import com.seproject.dao.ToolMapper;
import com.seproject.entities.Tool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ToolService {
    @Autowired
    ToolMapper toolMapper;

    public List<Tool> findPopular(){
        return toolMapper.top5();
    }

    public List<Tool> findAll(){
        return toolMapper.findAll();
    }

    public Tool find(String item){
        return toolMapper.find(item);
    }
}
