<%@ page import="bean.ExamDetail" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exam_Questions</title>
</head>
<body>
<h1>Here are your questions: </h1>
<% ExamDetail exd ;

  exd = (ExamDetail)(session.getAttribute("ExamDetails"));

  %>
<h2> your exam name is <%= exd.getName()%></h2>
</body>
</html>
