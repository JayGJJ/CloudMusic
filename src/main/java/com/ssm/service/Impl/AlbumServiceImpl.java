package com.ssm.service.Impl;

import com.ssm.dao.AlbumMapper;
import com.ssm.pojo.Album;
import com.ssm.pojo.Song;
import com.ssm.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AlbumServiceImpl implements AlbumService {
    @Autowired
    private AlbumMapper albumMapper;
    @Override
    public List<Album> findAllAlbum() {
        return albumMapper.findAllAlbum();
    }

    @Override
    public List<Song> findAlbumByName(String albumname) {
        return albumMapper.findAlbumByName(albumname);
    }
}
