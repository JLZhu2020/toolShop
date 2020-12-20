package com.seproject.service;

import com.seproject.dao.AccountMapper;
import com.seproject.entities.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountService {

    @Autowired
    AccountMapper accountMapper;

    public boolean login(Account account){
        Account aa=accountMapper.find(account.username);
        if(aa!=null&&account.password.equals(aa.password)){
            return true;
        }else return false;
    }

    public boolean insert(Account account){
        if(accountMapper.find(account.username)!=null)return false;
        int a=accountMapper.insert(account);
        System.out.println("success");
        if(a==1){
            return true;
        }else return false;
    }

}
