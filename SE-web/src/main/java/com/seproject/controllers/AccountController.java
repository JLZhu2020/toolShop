package com.seproject.controllers;

import com.seproject.entities.Account;
import com.seproject.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.SessionScope;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class AccountController {

    @Autowired
    AccountService accountService;

    @RequestMapping(value = {"/","welcome"})
    public String welcome(){
        return "welcome";
    }

    @RequestMapping("/login")
    public String showpage() {
        return "login";
    }

    @RequestMapping("/checkAccount")
    public String checkAccount(Account account, Model model, HttpServletResponse response){
        if(account.username==""||account.password==""){
            model.addAttribute("msg0","username or password could not be empty");
            return "login";
        }
        boolean res=accountService.login(account);
        if(res){
            response.addCookie(new Cookie("username",account.username));
            return "tools";
        }else{
            model.addAttribute("account",account);
            model.addAttribute("msg","invalid username or password");
            return "login";
        }
    }

    @RequestMapping("/signUp")
    public String signUp(){

        return "signup";
    }

    @RequestMapping("/newAccount")
    public String newAccount(Account account, Model model){
        if(account.password==""){
            model.addAttribute("account",account);
            model.addAttribute("msg2","password could not be empty");
            return "signup";
        }
        boolean res=accountService.insert(account);
        if(res){
            model.addAttribute("account",account);
            return "login";
        }else{
            model.addAttribute("msg1","username already exist!");
            return "signup";
        }
    }

    @RequestMapping("/signout")
    public String signout(HttpServletResponse response){
        Cookie cookie=new Cookie("username",null);
        cookie.setMaxAge(0);
        cookie.setPath("/");
        response.addCookie(cookie);
        return "welcome";
    }
}
