package com.ssm.service.Impl;

import com.ssm.dao.CommentMapper;
import com.ssm.pojo.Comment;
import com.ssm.pojo.CommentAndName;
import com.ssm.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<CommentAndName> findCommentBySongId(int songId) {
        return commentMapper.findCommentAndNameBySongId(songId);
    }

    @Override
    public int isCollected(int user_id, int song_id) {return commentMapper.isCollected(user_id,song_id);}

    @Override
    public void addComment(int uid, int songid, String content) {
        commentMapper.addComment(uid,songid,content);
    }
}
