<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	
	<!-- sidebox css and js -->
    <link rel="stylesheet" href="css/sidebox_css/sidebox.css">
	
    <title>WEGA Post</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this page-->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- login stylesheet for this page-->
    <link href="css/login.css" rel="stylesheet">

    <!-- GameBox stylesheet for this page-->
    <link href="css/Gamebox.css" rel="stylesheet">

  </head>

 <body onload="realtimeClock()">
 
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="WebGame.html">WEGA</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <!-- Game component-->
            <li class="nav-item  dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Game
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item active" href="GameList1.html">2D Game</a>
                <a class="dropdown-item" href="GameList2.html">3D RPG Game</a>
                <a class="dropdown-item" href="Notyet.html">VR Game</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="services.html">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>

            <!-- login component-->
            <li class="nav-item">
              <a class="nav-link" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</a /button>

              <div id="id01" class="modal" target="parent">

                <form class="modal-content animate" action="/login_submit.php">
                    <div class="imgcontainer">
                      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                      <img src="img/avater.png" alt="Avatar" class="avatar" width="50px" height="100px">
                    </div>

                    <div class="container">
                      <label for="uname"><b>Username</b></label>
                      <input type="text" placeholder="Enter Username" name="uname" required>

                      <label for="psw"><b>Password</b></label>
                      <input type="password" placeholder="Enter Password" name="psw" required>

                      <button type="submit">Login</button>
                      <label>
                        <input type="checkbox" checked="checked" name="remember"> Remember me
                      </label>
                    </div>

                    <div class="container" style="background-color:#f1f1f1">
                      <button type="button" onclick="location.href='signup.html'" class="signupbtn">Sign up</button>
                      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                      <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>
                  </form>

              <script>
              // Get the modal
              var modal = document.getElementById('id01');

              // When the user clicks anywhere outside of the modal, close it
              window.onclick = function(event) {
                  if (event.target == modal) {
                      modal.style.display = "none";
                  }
              }
              </script>
            </div>

            </li>

            <!--
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Blog
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
                <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
                <a class="dropdown-item" href="blog-post.html">Blog Post</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Other Pages
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                <a class="dropdown-item" href="full-width.html">Full Width Page</a>
                <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
                <a class="dropdown-item" href="faq.html">FAQ</a>
                <a class="dropdown-item" href="404.html">404</a>
                <a class="dropdown-item" href="pricing.html">Pricing Table</a>
              </div>
            </li>
          -->
          </ul>
        </div>
      </div>
    </nav>
    <!-- Page Content -->
    <div class="container">
		<%
		String title="", memo="", name="", time="", email="";
		int id = Integer.parseInt(request.getParameter("id"));
		
		Connection con = null;
		Statement stmt = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3305/board";
			con = DriverManager.getConnection(url, "root", "1234");
		}
		catch(Exception e) {
			out.println("데이터베이스 접속에 문제가 있습니다.<hr>");
			out.println(e.getMessage());
			e.printStackTrace();
		}
		stmt = con.createStatement();
		String sql = "select * from communite_center where id = " + id;
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			title = rs.getString("title");
			memo = rs.getString("memo");
			name = rs.getString("name");
			time = rs.getString("time");
			email = rs.getString("email");
		}
	%>
      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3"><%= title %>
        <small>by
          <a href="communication.jsp">post</a>
        </small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="WebGame.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Post</li>
      </ol>

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">
	
          <!-- Date/Time -->
		<img class="d-flex mr-3 rounded-circle" src="data:image/jpeg;base64,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" alt="img" width="50" height="50">
          <p><%= time %> <br/>  <%= email %></p>
          <hr>

          <!-- Post Content -->
          <p class="lead"><%= memo %></p>
          <hr>

		
          <!-- Comments Form -->
		<form action="insert.jsp" method="post">
          <div class="card my-4">
            <h5 class="card-header">name</h5>
	        <div class="form-group">
            </div>
                <textarea class="form-control" rows="1" name ="name"></textarea>
			<h5 class="card-header">Leave a Comment</h5>
            <div class="card-body">
                <div class="form-group">
                  <textarea class="form-control" rows="3" name ="memo"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </div>
		</form>
		
		<%
			Connection conn = null;
			Statement stmtt = null;
			try {
				Class.forName("org.gjt.mm.mysql.Driver");
				String url = "jdbc:mysql://localhost:3305/board";
				conn = DriverManager.getConnection(url, "root", "1234");
			} catch(Exception e) {
				out.println("데이터베이스 접속에 문제가 있습니다.<hr>");
				out.println(e.getMessage());
				e.printStackTrace();
			}
			stmtt = conn.createStatement();
			String sqll = "select * from comment order by id asc ";
			ResultSet rss = stmtt.executeQuery(sqll);
			
			if(rss != null) {
				while(rss.next()) {
					int id2 = Integer.parseInt(rss.getString("id"));
		%>
          <!-- Comment with nested comments -->
          <div class="media mb-4">
            <div class="media-body">
			    <h5 class="mt-0"><%= rss.getString("name") %></h5>
				<%= rss.getString("memo") %>
			</div>
          </div>
		  <hr>
		<%
				}
			}
		%>
        </div>
		

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
		<div id = "widgetbox">

          <!-- Search Widget -->
          <div class="card mb-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="WebGame.html">Home</a>
                    </li>
                    <li>
                      <a href="about.html">About</a>
                    </li>
                    <li>
                      <a href="contact.html">Contact</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="GameList1.html">2D Game</a>
                    </li>
                    <li>
                      <a href="GameList2.html">3D Game</a>
                    </li>
                    <li>
                      <a href="communication.html">Communication</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">Clock Widget</h5>
            <iframe src="http://free.timeanddate.com/clock/i67np5km/n4828/tlkr/fn17/fs15/tt0/tw1/tm1/td2/ta1/tb1" frameborder="0" width="350" height="30"></iframe>
          </div>
        </div>
		</div>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; WEGA</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
