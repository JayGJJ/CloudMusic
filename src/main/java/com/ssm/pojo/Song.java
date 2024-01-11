package com.ssm.pojo;

public class Song {
    private Integer songid;
    private String songname;
    private String time;
    private String album;
    private String singername;
    private String mv;

    private int like;

    public Integer getSongid() {
        return songid;
    }

    public void setSongid(Integer songid) {
        this.songid = songid;
    }

    public String getSongname() {
        return songname;
    }

    public void setSongname(String songname) {
        this.songname = songname.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album.trim();
    }

    public String getSingername() {
        return singername;
    }

    public void setSingername(String singername) {
        this.singername = singername.trim();
    }

    public String getMv() {
        return mv;
    }

    public void setMv(String mv) {
        this.mv = mv=mv.trim();
    }

    public int getLike() {
        return like;
    }

    public void setLike(int like) {
        this.like = like;
    }

    @Override
    public String toString() {
        return "Song{" +
                "songid=" + songid +
                ", songname='" + songname + '\'' +
                ", time='" + time + '\'' +
                ", album='" + album + '\'' +
                ", singername='" + singername + '\'' +
                ", mv='" + mv + '\'' +
                '}';
    }
}
