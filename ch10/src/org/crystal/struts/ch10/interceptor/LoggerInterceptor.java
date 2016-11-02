package org.crystal.struts.ch10.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.PreResultListener;

/**
 * Created by xieql2 on 2016/11/2.
 */
public class LoggerInterceptor extends AbstractInterceptor {
    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {

        actionInvocation.addPreResultListener(new PreResultListener() {
            @Override
            public void beforeResult(ActionInvocation actionInvocation, String s) {
                System.out.println("(3)Action已执行完毕，Result还未执行");
            }
        });

        System.out.println("(1)Action和Result还没有开始执行");
        String resultCode=actionInvocation.invoke();
        System.out.println("(4)Action和Result已执行完毕，控制权重新交给LoggerInterceptor");
        return  resultCode;
    }
}
