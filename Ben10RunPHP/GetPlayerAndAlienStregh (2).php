
<?php

$nickname = $_GET['nick'];

$servername = "localhost";
$username = "root";
$password =  null;
$dbname = "ben10rundb";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


    
$sql = "SELECT p.Nickname as nickname, c.AlienID as alienId, c.Ataque as ataq, a.Nome as aliennome,c.Defesa as def, c.Pontos_de_vida as hp
            FROM player as p 
            INNER JOIN caixadecapsulas as c ON (p.Nickname = c.Nickname) 
            INNER JOIN aliens as a ON ( c.AlienID = a.ID)            
			WHERE (p.Nickname = '$nickname')
			";
			
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	while ($row = $result->fetch_assoc()) {
        echo "Nickname: " . $row["nickname"]. " - Alien: " . $row["aliennome"]. "- Ataque: " . $row["ataq"]."- Defesa: " . $row["def"]."- Pontos de vida: " . $row["hp"].  "<br>";
    }
}
else echo "Não há resultado";


 
?>