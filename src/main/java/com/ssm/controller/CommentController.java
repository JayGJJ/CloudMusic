package com.ssm.controller;

import com.ssm.pojo.Comment;
import com.ssm.pojo.CommentAndName;
import com.ssm.pojo.Song;
import com.ssm.pojo.User;
import com.ssm.service.CommentService;
import com.ssm.service.SongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class CommentController {
    @Autowired
      private CommentService commentService;
    @Autowired
    private SongService songService;

    //根据歌曲id查找评论
    @RequestMapping("/findCommentBySongId")
    public String findCommentBySongId(int songid, Model model, HttpSession session) {
        List<CommentAndName> commentList = commentService.findCommentBySongId(songid);
        Song song = songService.findSongById(songid);
        int number = 0;
        for (CommentAndName commentAndName : commentList) {
            number++;
        }
        User user = (User) session.getAttribute("user");
        int result = commentService.isCollected(user.getUid(), songid);
        String isCollected = "";
        if (result > 0) {
            isCollected = "已收藏";
        } else {
            isCollected = "收藏";
        }
        model.addAttribute("commentList", commentList);
        model.addAttribute("number", number);
        model.addAttribute("song", song);
        model.addAttribute("isCollected", isCollected);
        return "player.jsp";
    }

    //添加评论
    @RequestMapping("/addComment")
    public String addComment(int songid, HttpServletRequest request, HttpSession session, Model model) {
        User user = (User) session.getAttribute("user");
        String content = request.getParameter("comment");
        commentService.addComment(user.getUid(), songid, content);
//        System.out.println(content+" "+songid+" "+user.getUid());
        return "findCommentBySongId?songid=" + songid;
    }
}
