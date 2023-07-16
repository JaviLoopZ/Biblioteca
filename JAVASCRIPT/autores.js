const urlParams = new URLSearchParams(window.location.search);
const datosJSON = urlParams.get('autores'); //'autores' es el parametro de la url que se envía al presionar Autores
const autores = JSON.parse(datosJSON);
const detalleAutores = document.getElementById("card-authors");

for (const autor of autores)
{
    const divAutores = document.createElement("div");
    divAutores.classList.add("col-md-4", "menu-section");
    divAutores.innerHTML = `
    <div class='menu-item-det'>
        <h5>Nombre</h5>
        <p>${autor.nombre}</p>
        <h5>Apellido</h5>
        <p>${autor.apellidos}</p>   
    </div>
    `;

    detalleAutores.appendChild(divAutores);
}

document.getElementById("search-button").addEventListener("click", function() {
    consultaAutor();
});

function consultaAutor()
{
    const searchInput = document.getElementById('search-input');
    const searchTerm = searchInput.value;

        //Se realizar la solicitud AJAX al archivo PHP con el término de búsqueda
        if(searchInput.value != ' '){
            const url = "./CLASES/ConsultasAutores.php"
        fetch(`${url}?autor=${encodeURIComponent(searchTerm)}`)
            .then(response => response.json())
            .then(autores => {
                // Limpiar el contenedor de resultados antes de mostrar los nuevos resultados
                let cardAuthors = document.getElementById('card-authors');
                cardAuthors.innerHTML = '';
                if(autores.length > 0){
                // Mostrar los resultados en el contenedor
                for (const autor of autores) {
                    const divAuthors = document.createElement("div");
                    divAuthors.classList.add("col-md-4", "menu-section");
                    divAuthors.innerHTML = `
                    <div class='menu-item-det'>
                        <h5>Nombre</h5>
                        <p>${autor.nombre}</p>
                        <h5>Apellido</h5>
                        <p>${autor.apellidos}</p>   
                    </div>
                        `;
                    cardAuthors.appendChild(divAuthors);
                }
            }else{
                cardAuthors.innerHTML = "No se encontraron resultados.";
            }
                
            })
            .catch(error => console.error('Error:', error));
        }
}
