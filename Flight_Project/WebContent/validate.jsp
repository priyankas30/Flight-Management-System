<%@page import="com.dto.Admin"  %>
<jsp:useBean id="admin" class="com.dto.Admin" scope="session"></jsp:useBean>

<% 
	String aname = request.getParameter("adminName");
	String apass=request.getParameter("adminPass");
	
	if(aname.equals(admin.getAdminName()) && (apass.equals(admin.getAdminPass()))){
		admin.setAdminId(5);
		
		response.sendRedirect("home.jsp");
		
	}
		else
		{
			response.sendRedirect("login.jsp");
		}
		
	
	

%>