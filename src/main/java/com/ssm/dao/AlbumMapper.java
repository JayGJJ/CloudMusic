package com.ssm.dao;

import com.ssm.pojo.Album;
import com.ssm.pojo.Song;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AlbumMapper {
    List<Album> findAllAlbum();

    List<Song> findAlbumByName(@Param("album") String albumname);
}
