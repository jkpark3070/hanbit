<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"   %>
<%@ page import="java.sql.*"   %>
<%!
	Connection cn;
	Statement st; 
	PreparedStatement pst;
	CallableStatement cst;
	ResultSet rs;
	int g_sabun, tot=27, g_pay;
	String g_name, g_ttl;
%>

	<%
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			cn = DriverManager.getConnection(url, "system", "oracle");
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	 <%
		try{
			int data = Integer.parseInt(request.getParameter("sabun"));
			String sql = "delete from guest where sabun="+data;
			st = cn.createStatement();
			st.executeUpdate(sql);
			response.sendRedirect("template.jsp?guestList");
		}catch(Exception e){
			System.out.println("��������: "+e.toString());
			response.sendRedirect("template.jsp?guestList");
		}finally{
			try{
				if(pst!=null)pst.close();
				if(cn!=null)pst.close();	
			}catch(Exception e){
				System.out.println(e.toString());
			}
		}
		 
	 %>






