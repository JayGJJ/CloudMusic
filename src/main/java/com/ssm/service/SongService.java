package com.ssm.service;

import com.github.pagehelper.PageInfo;
import com.ssm.pojo.Song;

import java.util.List;

public interface SongService {
    public PageInfo<Song> findSong(Song song, Integer pageNum);

    public int addSong(Song song);

    public int deleteSongById(int songid);

    public int updateSongById(Song song);

    public Song findSongById(int songid);

    public List<Song> findSongByCount();

    List<Song> findMySong(String uname);

    void collectSong(int songid, int uid);

    void likeSong(int songid);
}
