// const detalleItem = document.getElementById("card-autors");

// Se Crea una función que envía una solicitud Ajax al archivo PHP y obtiene los datos del autor o libro
function cargarDetalles(tipo_consulta) {
    let enlace = '';
    switch (tipo_consulta) {
        case 1:
            enlace = "./CLASES/ConsultasAutores.php";
            break;
        case 2:
            enlace = "./CLASES/ConsultasLibros.php";
            break;
        default:
            return;
    }

    fetch(enlace)
        .then(response => {
            if (!response.ok) {
                throw new Error("La respuesta del servidor no es válida.");
            }
            return response.json();
        })
        .then(items => {
            if (items.length > 0) {
                const resultados = JSON.stringify(items); //Se convierten los resultados en una cadena JSON
                let url = '';
                if(tipo_consulta == 1)
                    url = `autores.php?autores=${encodeURIComponent(resultados)}`;
                else
                    url = `libros.php?libros=${encodeURIComponent(resultados)}`;

                window.location.href = url; // Se redirige a la otra página con los resultados en la URL
            } else {
                const detalleItem = document.getElementById("card-authors");
                detalleItem.innerHTML = "No se encontraron resultados.";
            }
        })
        .catch(error => {
            const detalleItem = document.getElementById("card-authors");
            detalleItem.innerHTML = error.message;
        });
}
//Funciones para cargar el catalogo de autores o libros que se llaman por medio del evento clic del tipo de consulta seleccionada
document.getElementById("dvCatAutors").addEventListener("click", function() {
    cargarDetalles(1); // 1 para autores
});

document.getElementById("dvCatBooks").addEventListener("click", function() {
    cargarDetalles(2); // 2 para libros
});
