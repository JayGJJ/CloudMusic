package com.ssm.service;

import com.ssm.pojo.Album;
import com.ssm.pojo.Song;

import java.util.List;

public interface AlbumService {
    public List<Album> findAllAlbum();

    List<Song> findAlbumByName(String albumname);
}
