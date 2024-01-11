package com.ssm.pojo;

import lombok.Data;

import java.util.List;

@Data
public class CommentAndName {
    private int id;
    private int song_id;
    private int user_id;
    private String content;
    private String created_at;
    private String uname;

    public CommentAndName() {
    }

    public CommentAndName(int id, int song_id, int user_id, String content, String created_at, String uname) {
        this.id = id;
        this.song_id = song_id;
        this.user_id = user_id;
        this.content = content;
        this.created_at = created_at;
        this.uname = uname;
    }

    //重写toString方法
    @Override
    public String toString() {
        return "CommentAndName{" +
                "id=" + id +
                ", song_id='" + song_id + '\'' +
                ", user_id='" + user_id + '\'' +
                ", content='" + content + '\'' +
                ", created_at='" + created_at + '\'' +
                ", user_name='" + uname + '\'' +
                '}';
    }
}
