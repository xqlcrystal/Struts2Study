package org.crystal.struts.ch10.interceptor;


import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * Created by xieql2 on 2016/11/2.
 */
public class TimerInterceptor implements Interceptor {
    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
       long startTime=System.currentTimeMillis();
        String result=actionInvocation.invoke();
        long executionTime=System.currentTimeMillis()-startTime;
        System.out.println("Action 执行花费的毫秒数是："+executionTime);
        return result;
    }
}
