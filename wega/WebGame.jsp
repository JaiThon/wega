<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- sidebox css and js -->
    <link rel="stylesheet" href="css/sidebox_css/sidebox.css">
    <script src="js/sidebox_js/sidebox.js"></script>

    <title>WEGA</title>

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
    <div id = "timebox">
    <form name="rtcForm">
    <input type="text" name="rtcInput" size="20" readonly="readonly" />
    </form>
    </div>

    <div id = "ad_box1" >
      <center>
        <a target="_blank" href="img/Ad_img/HOS.jpg">
          <img src="img/Ad_img/HOS.jpg" alt="Heros oh the storms" id ="hos"width="300" height="200">
        </a>
      </center>
    </div>

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

                <form class="modal-content animate" action="/login_submit.jsp">
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
                      <button type="button" onclick="location.href='signup.jsp'" class="signupbtn">Sign up</button>
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

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('img/Game_Img/Project_One.png')" onclick="document.getElementById('raizer').style.display='block'" style="width:auto;" >
            <div class="carousel-caption d-none d-md-block">
              <h3>ProJect Razier</h3>
              <p>You can enjoy shooting with character in this 2D Game</p>

              <div id="raizer" class="modal" target="parent">
                <form class="modal-content-game animate">
                    <div class="imgcontainer-game">
                      <span onclick="document.getElementById('raizer').style.display='none'" class="close" title="Close Modal">&times;</span>
                      <img src="img/Game_Img/Project_One.png" alt="Raizer" class="raizer" width="500px" height="200px">
                    </div>

                    <div class="container-game" style="background-color:#f1f1f1">
                      <button type="button" onclick="location.href='Project_One.html'" class="btn btn-primary">Play</button>
                    </div>

                  </form>
              </div>
                <script>
                // Get the modal
                var modal = document.getElementById('raizer');

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function(event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
                </script>
              </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('img/Game_Img/Project_Two.png')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Running Box Game</h3>
              <p>Enjoy with your friends and share your score!</p>
            </div>
          </div>

          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('img/Game_Img/Project_Forth.png')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Survival Game</h3>
              <p>You can shot enemies coming to you.</p>
            </div>
          </div>

        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>

    <!-- Page Content -->
    <div class="container">

      <h1 class="my-4">Welcome to Our Web Game</h1>

      <!-- Marketing Icons Section -->
      <div class="row">
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Introduce</h4>
            <div class="card-body">
              <p class="card-text">Introduce the way did i made thoes web games by myself.</p>
            </div>
            <div class="card-footer">
              <a href="Introduce.html" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <!-- not yet -->
            <h4 class="card-header">Game Developer</h4>
            <div class="card-body">
              <p class="card-text">I can tell you that who made this Website and WebGame</p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Contact</h4>
            <div class="card-body">
              <p class="card-text"> Honestly, We can tell you plan to making games and We have tend to hear anyone who want to send any comment</p>
            </div>
            <div class="card-footer">
              <a href="contact.html" class="btn btn-primary"> More</a>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->

      <!-- Portfolio Section -->
      <h2>Game List</h2>

      <div class="row">
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="GameList1_Detail_Raizer.html"><img class="card-img-top" src="img/Game_Img/Project_One.png" alt="Raizer" width="250" height="200px"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="GameList1_Detail_Raizer.html">Raizer</a>
              </h4>
              <p class="card-text">Did you have free time or rest time? Come in.
              Here is a game for you, we made this game by any chance.
              ps) If you want to be shared this game source code, please send to me any message
              Do not hesitate, I welcome you anytime.</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="GameList1_Detail_BoxRunning.html"><img class="card-img-top" src="./img/Game_Img/Project_Two.png" alt="BoxRunning" width="250px" height="200px"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="GameList1_Detail_BoxRunning.html">Box Running</a>
              </h4>
              <p class="card-text">Did you have free time or rest time? Come in.
              Here is a game for you, This character, box is running
              and you should jump using (space), let's jump and try it!</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="GameList1_Detail_Mole.html"><img class="card-img-top" src="img/Game_Img/Project_Third.png" alt="Mole Game" width="250px" height="200px"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="GameList1_Detail_Mole.html">Mole Game</a>
              </h4>
              <p class="card-text">Punch and Kill something like mole!
              If you want to be shared this game source code, please send to me any message
              Do not hesitate, I welcome you anytime.
            </p>
          </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="GameList2_Detail_ShotGun.html"><img class="card-img-top" src="img/Game_Img/Project_Forth1.png" alt="Survival Game" width="250px" height="200px"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="GameList2_Detail_ShotGun.html">Survival Game</a>
              </h4>
              <p class="card-text">Punch and Kill someone?, come in.
              We can help to release your stress.
              If you want to be shared this game source code, please send to me any message
              Do not hesitate, I welcome you anytime.
            </p>
          </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="GameList1_Detail_Puzzle.html"><img class="card-img-top" src="img/Game_Img/Project_Puzzle.png" alt="Puzzle" width="250px" height="200px"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="GameList1_Detail_Puzzle.html">Puzzle Game</a>
              </h4>
              <p class="card-text">Just click and sawp!</div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="Notyet.html"><img class="card-img-top" src="http://placehold.it/700x400" alt="notyet" width="250px" height="200px"></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="Notyet.html">????</a>
              </h4>
              <p class="card-text">Sorry to you, We are planning this game, if you have something, please comment or mail!</div>
          </div>
        </div>
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy;JaeSeong Oh</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
