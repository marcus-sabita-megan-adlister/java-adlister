package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {

    User findByUsername(String username);

    Long insert(User user);

    User findUserByAdId(int adId);



    void updateProfile(User user);
}
