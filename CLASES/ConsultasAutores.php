<?php
	include('./ConexionBD.php');
	$valor_busqueda = isset($_GET['autor']) ? $_GET['autor'] : '';

	if(!empty($valor_busqueda))
		$sql = "select * from autores where Nombre like '%$valor_busqueda%' or Apellidos like '%$valor_busqueda%'";
	else
		$sql = "select *from autores";
			
	$conBD = new ConexionBD();
	$result = mysqli_query($conBD -> conexion,$sql,MYSQLI_STORE_RESULT);
			
	$autores = array();	
	while ($row = mysqli_fetch_assoc($result))
	{
		$autor = array(
			'id' => $row['IdAutor'],
			'nombre' => $row['Nombre'],
			'apellidos' => $row['Apellidos'],
		);
		$autores[] = $autor;
	}
	header('Content-Type: application/json');
	echo json_encode($autores);
?>
