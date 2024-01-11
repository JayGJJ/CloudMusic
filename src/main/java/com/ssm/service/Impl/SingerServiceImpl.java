package com.ssm.service.Impl;

import com.ssm.dao.SingerMapper;
import com.ssm.pojo.Singer;
import com.ssm.service.SingerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SingerServiceImpl implements SingerService {
    @Autowired
    private SingerMapper singerMapper;
    @Override
    public List<Singer> findSingerRandom() {
        //随机生成小于等于18的数
        int num = (int)(Math.random()*17+1);
        return singerMapper.findSingerRandom(num);
    }

    @Override
    public List<Singer> findAllSinger() {
        return singerMapper.findAllSinger();
    }
}
