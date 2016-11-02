package org.crystal.struts2.action;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;
import org.crystal.struts2.persistence.dao.CategoryDao;
import org.crystal.struts2.persistence.dao.ICategoryDao;
import org.crystal.struts2.persistence.entity.Category;

import java.util.List;

/**
 * Created by xieql2 on 2016/11/1.
 */
public class CategoryAction extends ActionSupport implements Preparable {
    private Category category;
    private ICategoryDao catDao;
    private List<Category> categories;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    private Integer id;
    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public ICategoryDao getCatDao() {
        return catDao;
    }

    public void setCatDao(ICategoryDao catDao) {
        this.catDao = catDao;
    }

    public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public String list(){
        categories=catDao.findAll();
        return SUCCESS;
    }

    public String delete(){
        if(null!=id){
            catDao.delete(id);
        }
        return SUCCESS;
    }

    public String save(){
        catDao.makepersistent(category);
        return SUCCESS;

    }

    @Override
    public void prepare() throws Exception {
        if(null!=id){
            category=catDao.findbyId(id);
        }

    }
}
