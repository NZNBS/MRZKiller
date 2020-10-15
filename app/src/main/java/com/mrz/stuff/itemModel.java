package com.mrz.stuff;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public class itemModel {

    String image;
    String name;
    String PKG;
    String service;

    public String getImage() {
        return image;
    }
    public void setImage(String image) {
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
