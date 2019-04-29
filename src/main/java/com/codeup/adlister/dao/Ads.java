package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    List<Ad> allFromUser(int id);

    List<Ad> seeMore(int id);

    List<Ad> findbyid(long id);

    List<Ad> findBySearch(String search);

    void deleteAd(int id);
    void updateAd(Ad ad);

}
