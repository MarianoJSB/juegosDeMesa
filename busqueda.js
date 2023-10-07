const query = document.getElementById("busquedaJuego");
const contenido = document.getElementById("resultadosJuegos");
let url;

async function cargarContenido(url) {
    try {
        const response = await fetch(url);
        if (!response.ok) {
            throw new Error('La solicitud no se pudo completar.');
        }
        const data = await response.text();
        contenido.innerHTML = data;
    } catch (error) {
        console.error('Error al cargar contenido:', error);
    }
}

query.addEventListener('keyup', async function () {
    clearTimeout(this.timer); // Limpiar temporizador anterior
    this.timer = setTimeout(async () => {
        url = 'resultados.php?query=' + query.value;
        await cargarContenido(url);
        for (let index = 0; index < 5; index++) {
            const juego = document.getElementById("nombreId" + index);
            const categoria = document.getElementById("nombreCat" + index);
            const proovedor = document.getElementById("nombreProv" + index);
            const precio = document.getElementById("precio" + index);
            const ganancia = document.getElementById("ganancia" + index);
            const stock = document.getElementById("stock" + index);
            const id = document.getElementById("id" + index);
            juego.addEventListener('click', function () {
                const cont = document.querySelector("tbody");
                cont.innerHTML = `
                    <tr id="tr${index}">
                        <td><label>${juego.textContent}</label><input type="text" value="${juego.textContent}" name="Nombre" id="nombreJuego0" readonly></td>
                        <td><label>${categoria.textContent}</label><input type="text" value="${categoria.textContent}" name="Categoria" id="" readonly></td>
                        <td id="a" title="555"><label>${proovedor.textContent}</label><input type="text" value="${proovedor.textContent}" name="Proveedor" id="" readonly></td>
                        <td><label>${precio.textContent}</label><input type="number" value="${precio.textContent}" name="Precio" id="" readonly></td>
                        <td><label>${ganancia.textContent}</label><input type="number" value="${ganancia.textContent}" name="Ganancias" id="" readonly></td>
                        <td><label>${stock.textContent}</label><input type="number" value="${stock.textContent}" name="Stock" id="" readonly></td>
                        <td id="acciones">         
                            <a href="index.php?editar=${id.textContent}"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><!-- Agrega el contenido del SVG aquí --></svg></a>         
                            <a href="index.php?borrar=${id.textContent}"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><!-- Agrega el contenido del SVG aquí --></svg></a>                                                
                        </td>                        
                    </tr>
                `;
            });
        }
    }, 200);
});
