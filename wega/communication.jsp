<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WEGA Communication Board</title>

	<!-- sidebox css and js -->
    <link rel="stylesheet" href="css/sidebox_css/sidebox.css">
	
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">


    <!-- login stylesheet for this page-->
    <link href="css/login.css" rel="stylesheet">
  </head>

  <body>

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

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">Post
        <small>WEGA</small>
      </h1>

      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="WebGame.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Communication</li>
      </ol>

      <table class = "table table-hover">
          <thead>
          <tr>
              <th>Number</th>
              <th>Title</th>
              <th>Made by</th>
              <th>Date</th>
              <th>Email</th>
          </tr>
			</thead>
		<%
			Connection con = null;
			Statement stmt = null;
			try {
				Class.forName("org.gjt.mm.mysql.Driver");
				String url = "jdbc:mysql://localhost:3305/board";
				con = DriverManager.getConnection(url, "root", "1234");
			} catch(Exception e) {
				out.println("데이터베이스 접속에 문제가 있습니다.<hr>");
				out.println(e.getMessage());
				e.printStackTrace();
			}
			stmt = con.createStatement();
			String sql = "select * from communite_center order by id asc ";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs != null) {
				while(rs.next()) {
					int id = Integer.parseInt(rs.getString("id"));
		%>
		
          <tr>
		   <tbody>
			<td><%= id %></td>
			<td><a href="communication_display.jsp?id=<%= id %>">
				<%= rs.getString("title") %></a>
			</td>
			<td><%= rs.getString("name") %></td>
			<td><%= rs.getString("time") %></td>
			<td><%= rs.getString("email") %></td>
			</tbody>
			</tr>
      <hr/>
	  <%
				}
			}
		%>
		</table>
      
	  <form action="communication_write.jsp" method="post">
      <button type="submit">write</button>
	  </form>
		<%
		if(stmt != null)
			stmt.close();
		if(con != null)
			con.close();
	%>
    <!-- /.container -->
</div>
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
