package com.ssm.pojo;

import lombok.Data;

@Data
public class Comment {
    private int id;
    private int song_id;
    private int user_id;
    private String content;
    private String created_at;

    //重写toString方法
    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", song_id='" + song_id + '\'' +
                ", user_id='" + user_id + '\'' +
                ", content='" + content + '\'' +
                ", created_at='" + created_at + '\'' +
                '}';
    }
}
