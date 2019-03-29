<%@page import="java.sql.*"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    Statement stmt=con.createStatement();
    String qr="select distinct category from prodinfo order by category";
    ResultSet rs=stmt.executeQuery(qr);
%>
<html>
    <script>
      var request;
      function one(){
       var v=document.getElementById("cat").value;
       request=new XMLHttpRequest();
       request.onreadystatechange=two;
       request.open("get", "GetItems.jsp?t1="+v, true);
       request.send(null);
      }
      function two(){
        
            if(request.status==200 && request.readyState==4){
             var v=request.responseText;
             document.getElementById("data").innerHTML=v;
            }
     }
    </script>
    <body>
        <h1>Online Shopping</h1>
        Select Category <select name="cat" id="cat">
            <%
                while(rs.next()){
                    String item=rs.getString(1);
            %>
            <option onclick="one()"><%=item%></option>
            <%
                       }
                con.close();
            %>
                        </select>
        <hr>
        <div id="data"></div>
        <hr>
    </body>
</html>
