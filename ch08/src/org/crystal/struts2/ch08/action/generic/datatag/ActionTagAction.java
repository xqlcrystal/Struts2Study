package org.crystal.struts2.ch08.action.generic.datatag;

import com.opensymphony.xwork2.Action;
import org.apache.struts2.ServletActionContext;

/**
 * Created by xieql2 on 2016/10/27.
 */
public class ActionTagAction implements Action {

    private String username;
    private String email;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String doDefault()
    {
        ServletActionContext.getRequest().setAttribute("greeting","欢迎来到程序员之家");
        return SUCCESS;
    }
}
