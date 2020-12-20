package com.seproject.controllers;

import com.seproject.entities.CartItem;
import com.seproject.service.CartService;
import com.seproject.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class PaymentController {
    @Autowired
    PaymentService paymentService;

    @Autowired
    CartService cartService;

    @RequestMapping("/payment")
    public String payment(@CookieValue("username") String username, Model model){
        List<CartItem>res=cartService.findAll(username);
        double count=0.0;
        for(CartItem item:res)count+=item.amount*item.rate;
        model.addAttribute("count",count);
        return "payment";
    }

    @RequestMapping("/thankYou")
    public String thankYou(@CookieValue("username") String username){
        cartService.empty(username);
        return "thankYou";
    }
}
