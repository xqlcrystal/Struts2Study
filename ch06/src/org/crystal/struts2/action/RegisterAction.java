package org.crystal.struts2.action;

import com.opensymphony.xwork2.ActionSupport;
import org.crystal.struts2.persistence.dao.UserDao;

/**
 * Created by xieql2 on 2016/10/26.
 */
public class RegisterAction extends ActionSupport {

    UserDao dao=null;
    @Override
    public String execute() throws Exception {

        dao=new UserDao();
        dao.register(null);
        return SUCCESS;
    }
}
