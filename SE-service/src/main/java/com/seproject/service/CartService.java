package com.seproject.service;

import com.seproject.dao.CartMapper;
import com.seproject.entities.CartItem;
import com.seproject.entities.CartRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService {
    @Autowired
    CartMapper cartMapper;

    public List<CartItem> findAll(String username){
        return cartMapper.findAll(username);
    }

    public void addToCart(CartRecord cartRecord){
        if(cartMapper.exist(cartRecord.username,cartRecord.item)==0){
            cartMapper.newItem(cartRecord);
        }else cartMapper.changeAmount(cartRecord);
    }

    public void deleteItem(String username,String item){
        cartMapper.delete(username,item);
    }

    public void emptyTheCart(String username){
        cartMapper.empty(username);
    }

    public void removeItem(String username,String item){
        cartMapper.delete(username,item);
    }

    public void empty(String username){
        cartMapper.empty(username);
    }
}
