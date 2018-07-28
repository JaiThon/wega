<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
</head>
<body>
  <!--
  Directing Login to page
   localhost/Project_TWO/startbootstrap-modern-business-master/startbootstrap-modern-business-master/login_submit.php?username=오재성&password=1996&remember=on
  -->
  <?php
    $username = $_GET["username"];
    $password = $_GET["password"];
    if($username == "오재성"){
      if($password == "1996"){
        echo "오재성님 환영합니다";
      }
      else{
        echo "비밀번호가 잘못 입력되었습니다.";
      }
    }
    else {
        echo "아이디가 잘못 입력되었습니다.";
    }
   ?>
</body>
</html>
