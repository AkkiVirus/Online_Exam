
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student's Page</title>

</head>
<body>
<h1> Welcome on Student's Page <h1>
  <h1>Welcome <%=session.getAttribute("name")%></h1>

  <form action ="ShowExam" method ="POST">
    <input type="submit" value="See Exams">
  </form>

</body>
</html>
