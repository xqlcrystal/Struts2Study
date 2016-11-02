package org.crystal.struts.ch10.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;
import org.crystal.struts.ch10.model.User;

import java.util.Map;

/**
 * Created by xieql2 on 2016/11/2.
 */
public class LoginAction extends ActionSupport implements SessionAware {

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    private User user;
    private Map<String,Object> session;

    public String input() throws Exception{
        return INPUT;
    }

    @Override
    public String execute() throws Exception {
        if("zhangsan".equals(user.getUsername())
                && "1234".equals(user.getPassword())){
            session.put("user",user);
            return SUCCESS;
        }else {
            addActionError("登录失败");
            return INPUT;
        }

    }

    @Override
    public void setSession(Map<String, Object> map) {

        this.session=map;
    }
}
