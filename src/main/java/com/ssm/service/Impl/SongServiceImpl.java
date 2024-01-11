package com.ssm.service.Impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.dao.SongMapper;
import com.ssm.pojo.Song;
import com.ssm.service.SongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.awt.print.Book;
import java.util.List;


@Service
public class SongServiceImpl  implements SongService {
    @Autowired
    private SongMapper songMapper;

    @Override
    public PageInfo<Song> findSong(Song song, Integer pageNum) {
        PageHelper.startPage(pageNum, 10);
        List<Song> songs = songMapper.findSong(song);
        PageInfo<Song> pageInfo = new PageInfo<Song>(songs);
        return pageInfo;
    }
    @Override
    public int addSong(Song song) {
        return songMapper.addSong(song);
    }
    @Override
    public int deleteSongById(int songid) {
        return songMapper.deleteSongById(songid);
    }
    @Override
    public int updateSongById(Song song) {
        return songMapper.updateSongById(song);
    }
    @Override
    public Song findSongById(int songid) {
        return songMapper.findSongById(songid);
    }
    @Override
    public List<Song> findSongByCount() {return songMapper.findSongByCount();}

    @Override
    public List<Song> findMySong(String uname) {return songMapper.findMySong(uname);}

    @Override
    public void collectSong(int songid, int uid) {songMapper.collectSong(songid,uid);}

    @Override
    public void likeSong(int songid) {
        songMapper.likeSong(songid);
    }
}
