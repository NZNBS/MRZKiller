package com.mrz.stuff;

import android.graphics.drawable.Drawable;

public class itemModel {

    Drawable image;
    String name;
    String PKG;
    String service;

    public Drawable getImage() {
        return image;
    }
    public void setImage(Drawable image) {
        this.image = image;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPKG() {
        return PKG;
    }
    public void setService(String name){
        this.service = name;
    }
    public String getService() {
        return service;
    }
}
