const urlParams = new URLSearchParams(window.location.search);
const datosJSON = urlParams.get('libros'); //libros es el parametro de la url que se envía al presionar libros
const libros = JSON.parse(datosJSON);
const detalleLibros = document.getElementById("card-books");

for (const libro of libros) {
    const divLibros = document.createElement("div");
    divLibros.classList.add("col-md-4", "menu-section");
    divLibros.innerHTML = `
    <div class='menu-item-det'>
        <h5>Título</h5>
        <p>${libro.titulo}</p>
        <h5>Páginas</h5>
        <p>${libro.paginas}</p>
        <h5>Fecha de publicación</h5>
        <p>${libro.fechapublicacion}</p>
        <h5>Editorial</h5>
        <p>${libro.editorial}</p>
    </div>
    `;

    detalleLibros.appendChild(divLibros);
}

document.getElementById("search-button").addEventListener("click", function() {
    consultaLibro();
});

function consultaLibro()
{
    const searchInput = document.getElementById('search-input');
    const searchTerm = searchInput.value;

        //Se realizar la solicitud AJAX al archivo PHP con el término de búsqueda
        if(searchInput.value != ' '){
            const url = "./CLASES/ConsultasLibros.php"
        fetch(`${url}?titulo=${encodeURIComponent(searchTerm)}`)
            .then(response => response.json())
            .then(libros => {
                // Limpiar el contenedor de resultados antes de mostrar los nuevos resultados
                let cardBooks = document.getElementById('card-books');
                cardBooks.innerHTML = '';
                if(libros.length > 0){
                // Mostrar los resultados en el contenedor
                for (const libro of libros) {
                    const divLibros = document.createElement("div");
                    divLibros.classList.add("col-md-4", "menu-section");
                    divLibros.innerHTML = `
                        <div class='menu-item-det'>
                            <h5>Título</h5>
                            <p>${libro.titulo}</p>
                            <h5>Páginas</h5>
                            <p>${libro.paginas}</p>
                            <h5>Fecha de publicación</h5>
                            <p>${libro.fechapublicacion}</p>
                            <h5>Editorial</h5>
                            <p>${libro.editorial}</p>
                        </div>
                        `;

                    cardBooks.appendChild(divLibros);
                }
            }else{
                cardBooks.innerHTML = "No se encontraron resultados.";
            }
                
            })
            .catch(error => console.error('Error:', error));
        }
}

