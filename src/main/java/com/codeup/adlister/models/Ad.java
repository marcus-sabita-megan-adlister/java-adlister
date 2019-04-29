package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private String image;
    private String price;

    public String getPrice() {
        return this.price;
    }

    public String getImage(){ return this.image;}

    public void setPrice(String price) {
        this.price = price;
    }



    public Ad(long id, long userId, String title, String description, String price) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.price = price;
        this.image = "default.jpg";

    }

    public Ad(long userId, String title, String description, String price) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.price = price;
        this.image = "default.jpg";
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
