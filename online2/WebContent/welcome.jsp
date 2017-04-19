<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Online Exam</title>
  <link href="styles/main1.css" rel="stylesheet" type="text/css">
  <script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/source-sans-pro:n6:default.js" type="text/javascript"></script>
</head>

<body>

<div id="wrapper">
  <header id="top">
    <style="float:left;  height:80px;width:100px; margin-left:0px;margin-top:0px;">
    <h1>Online Examination System</h1>

    <nav id="mainnav">
      
        
	<ul>	<li><a href="indexAdmin.jsp">  admin login</a></li>		</ul>
        <vl>	<li><a href="indexExaminer.jsp">  examiner login</a></li>	</vl>
    	<wl>	<li><a href="index.jsp">     student login</a></li>		</wl>
    
    </nav>

  </header>
  
  <div id="hero">
    <article>
      <h3>Welcome!!! Please login</h3>
	</article>

    <div id ="auto_slide">
      <link rel="stylesheet" >
      <style>
        .mySlides {display:none;}
      </style>


      <div class="check" style="max-width:1000px; height:510px;padding-top: 10px;">

        <img class="mySlides" src="images/lelo.jpg"  style="width:130%; height:495px;">
        <img class="mySlides" src="images/exam5.jpg" style="width:130%; height:495px">
	<img class="mySlides" src="images/slide.jpg" style="width:130%;height:495px">
        <img class="mySlides" src="images/iiitg.jpg" style="width:130%;height:495px">

      </div>

<script>
        var myIndex = 0;
        carousel();

        function carousel() {
          var i;
          var x = document.getElementsByClassName("mySlides");
          for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
          }
          myIndex++;
          if (myIndex > x.length) {myIndex = 1}
          x[myIndex-1].style.display = "block";
          setTimeout(carousel, 4000);
        }
      </script>									


      
      
    </div>


  </div >
</div >
</div>
</body>
</html>
