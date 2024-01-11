package com.ssm.pojo;

import lombok.Data;

@Data
public class Album {
    private int id;
    private String title;
    private String release_date;
    private String artist;

    public Album() {
    }

    public Album(int id,String title, String release_date, String artist) {
        this.id = id;
        this.title = title;
        this.release_date = release_date;
        this.artist = artist;
    }

    //重写toString方法
    @Override
    public String toString() {
        return "Album{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", release_date='" + release_date + '\'' +
                ", artist='" + artist + '\'' +
                '}';
    }
}
