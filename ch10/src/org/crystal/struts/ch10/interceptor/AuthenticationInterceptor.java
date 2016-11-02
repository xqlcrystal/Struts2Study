package org.crystal.struts.ch10.interceptor;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import java.util.Map;

/**
 * Created by xieql2 on 2016/11/2.
 */
public class AuthenticationInterceptor extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        ActionContext ctx=ActionContext.getContext();
        Map<String,Object> session=ctx.getSession();
        Object user=session.get("user");
        if(user==null){
            ActionSupport action=(ActionSupport) actionInvocation.getAction();
            action.addActionError("您还没有登录，不能访问资源，请先登录");
            return Action.LOGIN;
        }
        else {
            return actionInvocation.invoke();
        }
    }
}
