package com.ssm.controller;

import com.ssm.pojo.Album;
import com.ssm.pojo.Song;
import com.ssm.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class AlbumController {

    @Autowired
    private AlbumService albumService;
    //查找所有专辑
    @RequestMapping("/findAllAlbum")
    public String findAllAlbum(Model model){
        List<Album> allAlbum = albumService.findAllAlbum();
        //循环打印出每个专辑的信息
//        for (Album album : allAlbum) {
//            System.out.println(album);
//        }
        model.addAttribute("allAlbum",allAlbum);
        return "album.jsp";
    }

    //根据专辑名查找专辑
    @RequestMapping("/findAlbumByName")
    public String findAlbumByName(String albumname,Model model){
        List<Song> songs = albumService.findAlbumByName(albumname);
        //打印出每首歌的信息
        for (Song song : songs) {
            System.out.println(song);
        }
        model.addAttribute("songs",songs);
        model.addAttribute("albumname",albumname);
        return "albumdetail.jsp";
    }
}
