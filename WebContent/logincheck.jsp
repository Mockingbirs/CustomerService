<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


    <%
    
    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
    
    int result = DAOcustomer.login(id,pass);
    
    //로그인시 3가지 경우의 수가 발생된다.
    //1 로그인성공(아이디/비번일치) ->로그인 승인 메인으로 이동
    //2.로그인실패(아이디는 일치/비번 불일치) ->다시 로그인으로 보내기
    //3.로그인실패(아이디가 없는경우) -> 회원가입으로 이동
    
    if(result==1){
    	response.sendRedirect("main.jsp");
    }else if(result==2){
    	response.sendRedirect("login.jsp");
    }else{
    	response.sendRedirect("join.jsp");
    }
    %>