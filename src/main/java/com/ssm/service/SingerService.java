package com.ssm.service;

import com.ssm.pojo.Singer;

import java.util.List;

public interface SingerService {
    List<Singer> findSingerRandom();

    List<Singer> findAllSinger();
}
