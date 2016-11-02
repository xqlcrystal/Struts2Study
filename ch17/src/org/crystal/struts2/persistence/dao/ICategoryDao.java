package org.crystal.struts2.persistence.dao;

import org.crystal.struts2.persistence.entity.Category;

import javax.sql.DataSource;
import java.util.List;

/**
 * Created by xieql2 on 2016/11/1.
 */
public interface ICategoryDao {
    DataSource getDataSource();

    void makepersistent(Category cat);

    Category findbyId(Integer id);

    List<Category> findAll();

    void save(Category cat);

    void update(Category cat);

    void delete(Integer id);
}
