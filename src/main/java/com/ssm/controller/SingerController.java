package com.ssm.controller;

import com.ssm.pojo.Singer;
import com.ssm.service.SingerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class SingerController {
    @Autowired
    private SingerService singerService;

    //随即查找四名歌手
     @RequestMapping("/findSingerRandom")
     public String findSinger(Model model) {
         List<Singer> singerList = singerService.findSingerRandom();
         model.addAttribute("singerList", singerList);
         return "forward:findSong";
     }

     //查找所有歌手
    @RequestMapping("/findAllSinger")
    public String findAllSinger(Model model){
        List<Singer> allSinger = singerService.findAllSinger();
        model.addAttribute("allSinger",allSinger);
        return "singer.jsp";
    }
}
