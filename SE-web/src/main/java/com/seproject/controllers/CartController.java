package com.seproject.controllers;

import com.seproject.entities.CartRecord;
import com.seproject.service.CartService;
import net.sf.json.JSONArray;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CartController {

    @Autowired
    CartService cartService;

    @RequestMapping("/allCartItem")
    @ResponseBody
    public String allCartItem(@RequestParam("username") String username){
        return JSONArray.fromObject(cartService.findAll(username)).toString();
    }

    @RequestMapping("/addToCart")
    @ResponseBody
    public void addToCart(@RequestParam("username") String username, @RequestParam("item") String item,@RequestParam("amount") int amount){
        CartRecord cartRecord=new CartRecord();
        cartRecord.username=username;
        cartRecord.item=item;
        cartRecord.amount=amount;
        cartService.addToCart(cartRecord);
    }

    @RequestMapping("/remove")
    @ResponseBody
    public void remove(@RequestParam("username") String username, @RequestParam("item") String item){
        cartService.removeItem(username,item);
    }

}
