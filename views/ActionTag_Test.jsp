<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% request.setCharacterEncoding("UTF-8"); %>
    
    <%
      String sId = request.getParameter("userID");
      String sValue = request.getParameter("loginCheck");
      String queryString = null;
    %>
    
    
    
    
  <%  
  if(sValue.equals("manager")){
      queryString = "userName="+URLEncoder.encode("나관리" , "UTF-8")+ "&userID="+sId;
	  response.sendRedirect("ActionTag_ManagerMain.jsp?"+queryString);
  }
  else{
	  response.sendRedirect("ActionTag_UserMain.jsp?userName=" + URLEncoder.encode("전고객" , "UTF-8")
	   +"&userID="+ URLEncoder.encode(sId,"UTF-8"));
  }
  %>