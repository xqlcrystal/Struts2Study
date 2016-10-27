package org.crystal.struts2.ch08.action.generic.datatag;

import com.opensymphony.xwork2.Action;
import org.crystal.struts2.ch08.model.User;

/**
 * Created by xieql2 on 2016/10/27.
 */
public class SetTagAction implements Action {

    public User getUser() {
        return user;
    }

    private User user;
    @Override
    public String execute() throws Exception {
        user=new User();
        user.setUsername("zhangsan");
        return SUCCESS;
    }
}
