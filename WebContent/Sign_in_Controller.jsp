<%@page import="rest_fb.User_Profile"%>
<%@page import="rest_fb.Get_User_Details"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<--! 3.8 và 3.13 : Thông báo đăng nhập thành công và hiển thị tên người dùng -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>		

			<%
			String access_token=(String)request.getParameter("access_token");
			
			
			Get_User_Details obj_Get_User_Details=new Get_User_Details();
			 
			User_Profile obj_User_Profile=obj_Get_User_Details.Get_Profile_info(access_token);
			
			%>
			<h1>BẠN ĐÃ ĐĂNG NHẬP THÀNH CÔNG</h1> 
			Xin chào bạn: <%=obj_User_Profile.getUser_name() %>
</body>
</html>
