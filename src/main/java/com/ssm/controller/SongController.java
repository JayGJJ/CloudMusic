package com.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.pojo.Song;
import com.ssm.pojo.User;
import com.ssm.service.SongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class SongController {
    @Autowired
    private SongService songService;

    //查找功能
    @RequestMapping("/findSong")
    public String findSong(Song song, @RequestParam(defaultValue = "1") Integer pageNum, Model model) {
        PageInfo<Song> datas = songService.findSong(song, pageNum);
        if (song != null) {
            model.addAttribute("datas", datas);
            return "main.jsp";
        } else {
            model.addAttribute("chamessage", "歌曲没有找到，请检查后重新输入");
            return "main.jsp";
        }
    }

    //增加功能
    @RequestMapping("/addSong")
    public String addSong(Song song, Model model) {
        int i = songService.addSong(song);
        if (i > 0) {
            model.addAttribute("datas", songService.findSong(null, 1));
            return "main.jsp";
        } else {
            model.addAttribute("chamessage", "歌曲没有找到，请检查后重新输入");
            return "main.jsp";
        }
    }

    //删除功能
    @RequestMapping("/deleteSongById")
    public String deleteSongById(Integer songid, Model model, Integer pageNum) {
        int i = songService.deleteSongById(songid);
        if (i > 0) {
            model.addAttribute("datas", songService.findSong(null, pageNum));

            return "main.jsp";
        } else {
            model.addAttribute("dmessage", "ID为" + songid + "的歌曲删除失败，请检查后重新输入");
            return "main.jsp";
        }
    }

    //修改功能
    @RequestMapping("/updateSongById")
    public String updateSongById(Song song, Model model) {
        int i = songService.updateSongById(song);
        if (i > 0) {
            model.addAttribute("songs", songService.findSong(null, 1));
            return "main.jsp";
        } else {
            model.addAttribute("umessage", "歌曲修改失败，请重试！");
            return "main.jsp";
        }
    }

    //根据ID查找
    @RequestMapping("/findSongById")
    public String findSongById(Integer songid, Model model) {
        Song song = songService.findSongById(songid);
        if (song != null) {
            model.addAttribute("song1", song);
            return "main.jsp";
        } else {
            model.addAttribute("fmessage", "ID为" + songid + "的歌曲没有找到，请检查后重新输入");
            return "main.jsp";
        }
    }

    //找出前十名的歌曲
    @RequestMapping("/findSongByCount")
    public String findSongByCount(Model model) {
        List<Song> songs = songService.findSongByCount();
        if (songs != null) {
            model.addAttribute("songs", songs);
            System.out.println(songs);
            return "rank.jsp";
        } else {
            model.addAttribute("fmessage", "没有找到前十名的歌曲，请检查后重新输入");
            return "rank.jsp";
        }
    }

    //查找出我的歌单
    @RequestMapping("/findMySong")
    public String findMySong(String uname, Model model) {
        System.out.println(uname);
        List<Song> songs = songService.findMySong(uname);
        if (songs != null) {
            model.addAttribute("songs", songs);
            System.out.println(songs);
            return "mysong.jsp";
        } else {
            model.addAttribute("fmessage", "没有找到我的歌单，请检查后重新输入");
            return "mysong.jsp";
        }
    }

    //收藏歌曲
    @RequestMapping("/collectSong")
    public String collectSong(int songid, HttpSession session) {
        //获取当前登录的uid
        User user = (User) session.getAttribute("user");
//        //打印当前登录的用户
//        System.out.println(user);
        songService.collectSong(songid, user.getUid());
        return "findCommentBySongId?songid=" + songid;
    }

    //点赞歌曲
    @RequestMapping("/likeSong")
    public String likeSong(int songid) {
        songService.likeSong(songid);
        return "findCommentBySongId?songid=" + songid;
    }
}
