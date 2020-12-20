package com.seproject.dao;

import com.seproject.entities.Tool;

import java.util.List;

public interface ToolMapper {
    List<Tool> findAll();
    List<Tool> top5();
    Tool find(String item);
    void insert(Tool tool);
}
