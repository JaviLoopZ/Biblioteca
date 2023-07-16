<?php
	include('./ConexionBD.php');

	$titulo = isset($_GET['titulo']) ? $_GET['titulo'] : '';

	if(!empty($titulo))
		$sql = "select * from Libros WHERE Titulo LIKE '%$titulo%'";
	else
		$sql = "select *from Libros";
			
	$conBD = new ConexionBD();
	$result = mysqli_query($conBD -> conexion,$sql,MYSQLI_STORE_RESULT);
			
	$libros = array();	
	while ($row = mysqli_fetch_assoc($result))
	{
		$libro = array(
			'id' => $row['IdLibro'],
			'titulo' => $row['Titulo'],
			'paginas' => $row['Paginas'],
            'fechapublicacion' => $row['FechaPublicacion'],
            'editorial' => $row['Editorial']
		);
		$libros[] = $libro;
	}
	header('Content-Type: application/json');
	echo json_encode($libros);

?>
