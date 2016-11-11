<html>
<head> 
</head>    
<body>
<div id="oi">    
<h1>Login</h1>
<form name="form" action="PlayerLogin.php" method="post">
    Nickname: <br>
  <input type="text" name="nicknameip" > <br>
     Password: <br>
  <input type="password" name="senha"> <br>
    <input type="submit" class="button" name="Loginbt" value="Login" >
</form>
    </div>
<div>
    <h2>Registrar</h2>
    <form name="form" action="PlayerLogin.php" method="post">
    Nickname: <br>
  <input type="text" name="nicknameip" > <br>
    Email: <br>
  <input type="text" name="emailip" > <br>
     Password: <br>
  <input type="password" name="senha"> <br>
    <input type="submit" class="button" name="registerBt" value="Registrar" >
</form>
</div>    
</body>
</html> 


<?php


$servername = "localhost";
$username = "root";
$password =  null;
$dbname = "ben10rundb";
   
if(isset( $_POST['nicknameip']) && isset($_POST['senha']) ){
$nickname =  $_POST['nicknameip'];
$senha = $_POST['senha'];


    
    
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

    
$sql = "SELECT player.Nickname as nickname,player.Senha as senha FROM `player` WHERE nickname ='$nickname' && senha ='$senha' " ;
    

    
$result = $conn->query($sql);
if ($result->num_rows > 0) {	
    echo "<script> alert('Login Realizado');</script>";
}
else echo "<script> alert('Nickname ou Senha Incorretos');</script>";
    
}




 

?>