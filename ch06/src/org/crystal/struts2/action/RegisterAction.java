package org.crystal.struts2.action;

import com.opensymphony.xwork2.ActionSupport;
import org.crystal.struts2.persistence.dao.UserDao;
import org.crystal.struts2.persistence.entity.User;

import java.util.Date;

/**
 * Created by xieql2 on 2016/10/26.
 */
public class RegisterAction extends ActionSupport {

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    UserDao userDao =null;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    User user;

    public RegisterAction() {

    }

    @Override
    public String doDefault() throws Exception {
        return INPUT;
    }

    @Override
    public String execute() throws Exception {

        user.setRegDate(new Date());
        userDao.register(user);
        return SUCCESS;
    }
}
