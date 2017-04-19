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
        <li><center><a href="welcome.jsp" class="thispage">Home</a></center></li>

       
      </ul>
    </nav>
  </header>
  <h2><center>Exams-List</center></h2>
  <form action="LogOut" method="post" >
    <table align="center">
      <%@ page import="java.util.*" %>
      <%@ page import="bean.ExamDetail" %>
      <%@ page import ="bean.Data "%>
      <% //new java.util.Date() %>
      <tr><td></td>
        <div align="right";margin-right:200px;><input type ="submit" name ="take2" value="Log Out"></div></tr>

    </table>
  </form>

  <form action="Get_Taken_ExamID" method="post">
    <%  ArrayList<ExamDetail> books;
      books = (ArrayList<ExamDetail>) session.getAttribute("Exams");

      Iterator it = books.iterator();
      String temp;
      ExamDetail pb = null;
      while (it.hasNext()) {
        pb = (ExamDetail) it.next();
        temp =Integer.toString(pb.getid());%>
    <hr>


    <div align="center">
      <p>
        <% out.println("<tr><td><h4><span style=\"color:green;\"><br>Exam Name-</span>" + pb.getName() + "</td></br>  <td></td><td><span style=\"color:blue;\"><br>Subject 1-</span>" + pb.getSub1() + "</td> <td></td> <td><span style=\"color:blue;\"></br><br>Subject 2-</span>" + pb.getSub2() + "</td> <td></td> <td><span style=\"color:blue;\"></br><br>Subject 3-</span>" + pb.getSub3() + "</td> <td></td> <td><span style=\"color:green;\"></br><br>Total Marks-</span>" + pb.getTotal() + "</h4><br></td><td></td></tr><br></br>" );

          //out.println("<tr><td><img src=" + pb.getImage() + " style=\"width:94px;height:98px\"></td>  <td></td><td>" + pb.getTitle() + "</td> <td></td> <td>" + pb.getAuthor() + "</td> <td></td> <td>" + pb.getPublicaton() + "</td> <td></td> <td>" + pb.getPrice() + "</td> <td></td> <td>" + pb.getId() + "</td></tr><br>");

          //out.println("<tr><td><img src=" + pb.getImage() + " style=\"width:94px;height:98px\"></td>  <td></td><td>" + pb.getTitle() + "</td> <td></td> <td>" + pb.getAuthor() + "</td> <td></td> <td>" + pb.getPublicaton() + "</td> <td></td> <td>" + pb.getPrice() + "</td> <td></td> <td>" + pb.getQuantity() + "</td></tr><br>");

        }
          Data dt= new Data();
          dt.seti(pb.getid());
          session.setAttribute("max", dt);

        %>
      </p>
      <p>&nbsp;</p>
    </div>



  </form>
 
</div>
</body>
</html>