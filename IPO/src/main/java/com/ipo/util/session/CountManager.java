package com.ipo.util.session;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


public class CountManager implements HttpSessionListener {
    public static int unknownCount;

    public static int getUnknownCount() {
        return unknownCount;
    }

    public void sessionCreated(HttpSessionEvent event) {
        //세션이 만들어질 때 호출
        HttpSession session = event.getSession(); //request에서 얻는 session과 동일한 객체
        session.setMaxInactiveInterval(60*20);

        unknownCount++;

        session.getServletContext().log(session.getId() + " 세션생성 " + ", 비회원 접속자수 : " + unknownCount);
    }

    public void sessionDestroyed(HttpSessionEvent event) {
        //세션이 소멸될 때 호출
        unknownCount--;
        if(unknownCount<0)
            unknownCount=0;



        HttpSession session = event.getSession();
        session.getServletContext().log(session.getId() + " 세션소멸 " + ", 비회원 접속자수 : " + unknownCount);
    }
}