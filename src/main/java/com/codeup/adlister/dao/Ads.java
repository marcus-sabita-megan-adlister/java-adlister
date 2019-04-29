package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.sql.SQLException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    List<Ad> allFromUser(int id);

    List<Ad> seeMore(int id);
//    List<Ad> findbyid(int id);
    void deleteAd(int id);
    Ad findbyid(long id) throws SQLException ;

void updateAd(Ad ad);
//void findbyid();
}
