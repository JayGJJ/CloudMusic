package com.ssm.dao;

import com.ssm.pojo.Singer;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SingerMapper {

    List<Singer> findSingerRandom(@Param("num")int num);

    List<Singer> findAllSinger();
}
