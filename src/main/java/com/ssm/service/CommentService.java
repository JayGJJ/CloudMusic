package com.ssm.service;

import com.ssm.pojo.Comment;
import com.ssm.pojo.CommentAndName;

import java.util.List;

public interface CommentService {
    public List<CommentAndName> findCommentBySongId(int songId);

    public int isCollected(int user_id, int song_id);

    void addComment(int uid, int songid, String content);
}
