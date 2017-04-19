<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <title>Online Examination System </title>
  <link href="styles/main.css" rel="stylesheet" type="text/css">
  <script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/source-sans-pro:n6:default.js" type="text/javascript"></script>

</head>

<body>

<div id="wrapper">
  <header id="top">
    
    <h1>Online Examination System</h1>
    <nav id="mainnav">
      <ul>
        <li><a href="welcome.jsp" class="thispage">Home</a></li>

      </ul>
    </nav>
  </header>
  <h1>Question-Paper</h1>
  <form action="LogOut" method="post" >
    <table align="center">
      <%@ page import="java.util.*" %>
      <%@ page import="bean.ExamDetail" %>
      <%@ page import ="bean.Data "%>
      <%@ page import="bean.QuesList" %>
      <% //new java.util.Date() %>
      <tr><td></td>
        <div align="right";margin-right:800px;><input type ="submit" name ="take2" value="Log Out"></div></tr>

    </table>
  </form>


  <form action="HandleExam" method="post">
    <%  ArrayList<QuesList> books;

      books = (ArrayList<QuesList>) session.getAttribute("questions");
     
      Iterator it = books.iterator();
      String temp;
      QuesList pb = null;
      while (it.hasNext()) {
    	  
        pb = (QuesList) it.next();
        temp =Integer.toString(pb.getquesid());
    %>
    <hr>
    <div align="center">
      <%
        out.println("<tr><h3><span style=\"color:blue;\">Question --></span> " + pb.getQuestion()+"\n"+ "</h3></tr>");

        

        try {
%>
<table > <%
        	
          out.println("<input type=\"radio\" name=\""+Integer.toString(pb.getquesid()*1000)+"\" value=\"option1\">"+pb.getOp1() +"<br>");
          out.println("<input type=\"radio\" name=\""+Integer.toString(pb.getquesid()*1000)+"\" value=\"option2\">"+pb.getOp2() +"<br>");
          out.println("<input type=\"radio\" name=\""+Integer.toString(pb.getquesid()*1000)+"\" value=\"option3\">"+pb.getOp3() +"<br>");
          out.println("<input type=\"radio\" name=\""+Integer.toString(pb.getquesid()*1000)+"\" value=\"option4\">"+pb.getOp4() +"<br>" );
          out.println("<input type=\"submit\"+ name =\"" + Integer.toString(pb.getquesid()) + "\" value=\"Confrim Answer\"></td></tr>");

         
          
        }catch(Exception e){
          out.println(e+ "\n" + "<h1>error in toggle button </h1>");

        }%></table><%

      

      }
        Data dt= new Data();
        dt.seti(pb.getquesid());
        session.setAttribute("maxi",dt);
        // out.println(pb.getquesid());
      %>
    </div>
  </form>
  <hr>
  <form action ="FinishExam" method="post">
    <td><input type="submit" value="Finish Exam"></td>
  </form>

  <hr>


</div>
</body>
</html>