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

  <div align="center">
  
    <h3> <em>Welcome Examiners please fill all fields to Add a New Question</em></h3>
  </div>
  <div align = "center">
    <form action ="Add_question" method ="POST">
      <table>
        <tr>
          <td>Your Question:</td>
          <td><input type="text" id="question" name ="question"></td>
        </tr>
        <tr>
          <td>Subject:</td>
          <td><input type="text" id="subject" name ="subject"></td>
        </tr>

        <tr>
          <td>Option1:</td>
          <td><input type="text" name ="option1"></td>
        </tr>

        <tr>
          <td> Option2 : <input type ="text"  name="option2" size="20" > </td>
          <br>

          <td>Option3 : <input type ="text" name="option3" size="20" > <br></td>
          <br>
          <td>Option4 : <input type ="text" name="option4" size="20" > <br></td>
        </tr>

        <tr>
          <td>Right Option : <input type ="number" name="right_option" size="11"></td>
        </tr>
        <tr>
          <td>Total Marks : <input type ="number" name="marks" size="11"></td>
        </tr>
        <tr>
          <td>Difficulty Level(0-5) : <input type ="number" name="level" size="11"></td>
        </tr>
        <tr>
          <td>Ques_Added By(Fac name): <input type ="text" name="fac_name" size="11"></td>
        </tr>

        <tr>
          <td></td>
          <td><input type="submit" value="Add Question"></td>
          <td></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p>

    </form>
  </div>
 
</div>
</body>
</html>
