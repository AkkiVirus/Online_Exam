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
      <div align="center">
        <li><a href="welcome.jsp" position: center; class="thispage">Home</a></li>
  </div>
      
      </ul>
    </nav>
  </header>
  <div align="center">
    <p>												 

  </div>
  <h1> Welcome Admin </h1>
  <div align="center">
    <form action ="createExam.jsp" method ="POST">
     
        <input type="submit" value="Create New Exam">


      </p>
      <p>&nbsp;</p>
    </form>


    <form action ="ShowExamAdmin" method ="POST">
      <p>
       
        <input type="submit" value="See Exams">


      </p>
      <p>&nbsp;</p>
    </form>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </div>
  
</div>
</body>
</html>
