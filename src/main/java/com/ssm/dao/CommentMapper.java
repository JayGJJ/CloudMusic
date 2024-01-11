package com.ssm.dao;

import com.ssm.pojo.Comment;
import com.ssm.pojo.CommentAndName;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentMapper {
    List<Comment> findCommentBySongId(@Param("song_id") int songId);

//    通过song_id,在评论表中查出对应的user_id，紧接着在用户表中查出对应的user_name
    List<CommentAndName> findCommentAndNameBySongId(@Param("song_id") int songId);

    int isCollected(@Param("user_id")int user_id,@Param("song_id") int song_id);

    void addComment(@Param("uid")int uid,@Param("songid") int songid,@Param("content") String content);
}
