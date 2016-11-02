package org.crystal.struts.ch10.action;

import com.opensymphony.xwork2.Action;

/**
 * Created by xieql2 on 2016/11/2.
 */
public class TestAction implements Action {
    @Override
    public String execute() throws Exception {
        System.out.println("(2) 正在执行TestAction的execute()方法");
        return SUCCESS;
    }
}
