<%@page import="java.sql.*"%>
<%
    String s=request.getParameter("t1");
    String qr="select uname from userdata where userid=?";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement ps=con.prepareStatement(qr);
    ps.setString(1,s);
    ResultSet rs=ps.executeQuery();
    boolean found=rs.next();
    if(found==true){
        out.println("Not-Available");
    }else{
        out.println("Available");
    }
    con.close();
    
    
%>