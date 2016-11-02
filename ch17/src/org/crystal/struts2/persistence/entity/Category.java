package org.crystal.struts2.persistence.entity;

import java.io.Serializable;

/**
 * Created by xieql2 on 2016/11/1.
 */
public class Category implements Serializable {

    private Integer id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private String name;
}
