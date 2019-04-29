package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description, price, image) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setString(4, ad.getPrice());
            stmt.setString(5, ad.getImage());


            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description"),
                rs.getString("price")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    public List<Ad> allFromUser(int id) {
        PreparedStatement stmt = null;

        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE user_id = ?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    public List<Ad> seeMore(int id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE id = ?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

//    @Override
//    public List<Ad> findbyid(int id) {
//        return null;
//    }

////    @Override
    public Ad findbyid(long id)throws SQLException  {

//        return null;
        String searchQuery = "SELECT * from ads WHERE id = ?";
        PreparedStatement stmt = connection.prepareStatement(searchQuery);
        stmt.setLong(1, id);
        ResultSet rs = stmt.executeQuery();
        rs.next();
        return extractAd(rs);
    }




    public void deleteAd(int id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("DELETE FROM ads WHERE id = ?");



            stmt.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Error deleting all ads.", e);
        }


    }


//
//    public void updateAd(Ad ad, long id) throws SQLException {
//        String editQuery = "UPDATE ads SET title = ?, description = ?, price = ? WHERE id = ?";
//        PreparedStatement stmt = connection.prepareStatement(editQuery, Statement.RETURN_GENERATED_KEYS);
//        stmt.setString(1, ad.getTitle());
//        stmt.setString(2, ad.getDescription());
//        stmt.setString(3, ad.getPrice());
//
//
//        stmt.setLong(4, id);
//        stmt.executeUpdate();
//    }

    public void updateAd(Ad ad){
        String query = "update ads set title = ?, description = ?, price = ? where id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, ad.getTitle());
            stmt.setString(2, ad.getDescription());
            stmt.setString(3, ad.getPrice());
            stmt.setLong(4, ad.getId());

            stmt.executeUpdate();
            stmt.close();

        } catch (SQLException e){
            throw new RuntimeException("Error creating new ads", e);
        }
    }

}