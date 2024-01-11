package com.ssm.dao;

import com.ssm.pojo.Song;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SongMapper {
    List<Song> findSong(Song song);

    int addSong(Song song);

    int deleteSongById(int songid);

    int updateSongById(Song song);

    Song findSongById(int songid);

    List<Song> findSongByCount();

    List<Song> findMySong(String uname);

    void collectSong(@Param("songid") int songid, @Param("uid") int uid);

    void likeSong(@Param("songid") int songid);
}
