package com.seproject.dao;

import com.seproject.entities.Account;
import org.apache.ibatis.annotations.Insert;


public interface AccountMapper {

    public int insert(Account account);
    public Account find(String username);

}
