package com.seproject.dao;

import com.seproject.entities.CartItem;
import com.seproject.entities.CartRecord;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartMapper {
    public void changeAmount(CartRecord cartRecord);
    public void newItem(CartRecord cartRecord);
    public List<CartItem> findAll(String username);
    public void delete(@Param("username") String username,@Param("item") String item);
    public int exist(@Param("username") String username, @Param("item") String item);
    public void empty(String username);
}
