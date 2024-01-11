package com.ssm.pojo;

import lombok.Data;

@Data
public class Singer {
    int id;
    String name;
    String sex;
    String country;
    String intro;

    public Singer() {
    }

    public Singer(int id, String name, String sex, String country, String intro) {
        this.id = id;
        this.name = name;
        this.sex = sex;
        this.country = country;
        this.intro = intro;
    }
    //重写toString方法


    @Override
    public String toString() {
        return "Singer{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", country='" + country + '\'' +
                ", intro='" + intro + '\'' +
                '}';
    }
}
