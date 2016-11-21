
<?php



$servername = "mysql.hostinger.com.br";
$username = "u173160052_user";
$password =  "trakinas00";
$dbname = "u173160052_ben10";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


    
$sql = "SELECT p.Nickname as nickname, c.AlienID as alienId, c.Ataque as ataq, a.Nome as aliennome,c.Defesa as def, c.PontosDeVida as hp
            FROM player as p 
            INNER JOIN caixadecapsulas as c ON (p.Nickname = c.Nickname) 
            INNER JOIN aliens as a ON ( c.AlienID = a.ID)           
			
			";
			
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	while ($row = $result->fetch_assoc()) {
        echo "Nickname: " . $row["nickname"]. " - Alien: " . $row["aliennome"]. "- Ataque: " . $row["ataq"]."- Defesa: " . $row["def"]."- Pontos de vida: " . $row["hp"].  "<br>";
    }
}
else echo "Não há resultado";


 
?>