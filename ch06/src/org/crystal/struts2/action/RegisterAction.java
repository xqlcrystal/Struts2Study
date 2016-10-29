package org.crystal.struts2.action;

import com.opensymphony.xwork2.ActionSupport;
import org.crystal.struts2.persistence.dao.UserDao;
import org.crystal.struts2.persistence.entity.User;
import org.crystal.struts2.exceptions.UsernameExistException;

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

        user.setRegDate(new Date());		//注意不要忘了设置注册日期
        try
        {
            userDao.register(user);
        }
        catch (Exception e)
        {
            //当捕获到UsernameExistException异常，则从资源文件中获取键为
            //error.username.exist的消息文本，然后添加到字段错误中。
            addFieldError("user.username",getText("error.username.exist"));
            //返回INPUT结果代码
            return INPUT;
        }
        return SUCCESS;
    }
}
