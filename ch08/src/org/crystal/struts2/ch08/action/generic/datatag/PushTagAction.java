package org.crystal.struts2.ch08.action.generic.datatag;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import org.crystal.struts2.ch08.model.User;

/**
 * Created by xieql2 on 2016/10/27.
 */
public class PushTagAction implements Action {

    public User getUser() {
        return user;
    }

    private User user;
    @Override
    public String execute() throws Exception {
        user=new User();
        user.setUsername("zhangsan");
        user.setSex(true);
        user.setEmail("zhangsan@163.com");
        ActionContext.getContext().getSession().put("user",user);
        return SUCCESS;
    }
}
