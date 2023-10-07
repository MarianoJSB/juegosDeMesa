<?php
    include("conexion.php");
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Juegos de mesa</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>
    <header>
    <div class="left">
        <a href="http://localhost/juegosDeMesa/juegosDeMesa/index.php" style="text-decoration: none; color: black; display: flex; align-items: center;">
            <img src="imagenes/logo.png" alt="Logo" style="height: 55px; margin-left: 55px;">
            <h1>Game Board Store</h1>
        </a>
    </div>
        <div class="right">
            <div class="buscador">                            
                <div class="bot">     
                    <input type="checkbox" id="toggle-theme" checked>
                    <label id="darkMenu" for="toggle-theme"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><path d="M448 256c0-106-86-192-192-192V448c106 0 192-86 192-192zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256z"/></svg></label>
                    

                    <label for="busquedaJuego"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#ffffff}</style><path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/></svg></label>
                    <input type="search" name="busqueda" id="busquedaJuego" placeholder="Buscar Juego"  id="buscador">                            
                </div>
                <div class="resultadosJuegos" id="resultadosJuegos">                    
                </div>                    
            </div>
            <div class="log">
                <label>Bienvenida Laura!</label>                
                <div class="img">
                    <img src="./default.png" style="
                                                width: 30px; 
                                                height: 30px;
                                                background-color: white;
                                                border-radius: 50%;
                                                padding: 2px;
                                                box-shadow: 1px 1px 5px black;
                                                
                                                "
                    >
                </div>            
            </div>
        </div>
    </header>                                                                  
    <div class="cont" style="display:flex; flex-direction: column-reverse;"> 
        <select id="categorias" multiple>
            <option value="Todos">Todos</option>
            <option value="Estrategia">Estrategia</option>
            <option value="Rol">Rol</option>
            <option value="Familiares">Familiares</option>
            <option value="Cartas">Cartas</option>
            <option value="Abstractos">Abstractos</option>
            <option value="Cooperativos">Cooperativos</option>
            <option value="Temáticos">Temáticos</option>
            <option value="Party Games">Party Games</option>
            <option value="Legacy">Legacy</option>
            <option value="Deck-building">Deck-building</option>
            <option value="Miniaturas">Miniaturas</option>
            <option value="Puzzle">Puzzle</option>
            <option value="Economía">Economía</option>
            <option value="Aventura">Aventura</option>
            <option value="Construcción">Construcción</option>
        </select>  
        <select id="proveedores" multiple>
            <option value="Todos">Todos</option>
            <option value="Asmodee">Asmodee</option>
            <option value="Ravensburger">Ravensburger</option>
            <option value="Hasbro">Hasbro</option>
            <option value="Mattel">Mattel</option>
            <option value="Fantasy Flight Games">Fantasy Flight Games</option>
            <option value="Days of Wonder">Days of Wonder</option>
            <option value="Gamewright">Gamewright</option>
            <option value="Z-Man Games">Z-Man Games</option>
            <option value="JuegosFantásticos Lt">JuegosFantásticos Lt</option>
            <option value="DiversiónInterminabl">DiversiónInterminabl</option>
            <option value="InnovaciónLúdica Inc">InnovaciónLúdica Inc</option>
            <option value="Ludomágico Corporati">Ludomágico Corporati</option>
            <option value="Juegolandia Global">Juegolandia Global</option>
            <option value="CartasCreativas Corp">CartasCreativas Corp</option>
            <option value="JuegosdelFuturo Ltd.">JuegosdelFuturo Ltd.</option>
        </select>
        <table id="miTabla">
        <thead>                
            <tr id="filaUno">                
                <th class="nombre">Nombre <span class="orden-icon-nombre">&#9660;</span></th>
                <th id="categoria-title">Categoria</th>
                <th id="proveedor-title">Proveedor</th>
                <th id="num">Precio <span class="orden-icon-precio">&#9650;</span></th>
                <th id="num">Ganancia <span class="orden-icon-ganancia">&#9650;</span></th>
                <th id="num">Stock <span class="orden-icon-stock">&#9650;</span></th>
                <th id="num">Acciones</th>                
            </tr>
        </thead>
            <div id="contenedorJuegos">
            <?php 

                        //Accion eliminar//
                        if(isset($_GET['borrar'])){
                            $eliminar = $_GET['borrar'];
                            $eliminar_registro = "DELETE FROM juegos WHERE id_juego='$eliminar'";
                            $consultaEliminar = mysqli_query($conexion, $eliminar_registro) ? print("<script>alert('Registro eliminado'); window.location = 'index.php' </script>") : print("<script>alert('ERROR al eliminar') window.location = 'index.php' </script>");
                            }

                        //Accion editar//
                        if(isset($_GET['editar'])){
                            $editar = $_GET['editar'];

                            //Consultamos por lod datos de los juegos//
                            $sqL_editar = "SELECT * FROM juegos WHERE id_juego = '$editar'";
                            $consulta_editar = mysqli_query($conexion, $sqL_editar);
                            $registro_editar = mysqli_fetch_assoc($consulta_editar);

                            //Consultamos por los nombres de las proveedores correspondientes//
                            $sql_pro = "SELECT p.nombre AS nombre_proveedor
                            FROM juegos AS j
                            JOIN proveedor AS p ON j.id_pro = p.id_proveedor
                            WHERE j.id_juego = '$editar'";
                            $proveedor = mysqli_query($conexion, $sql_pro);
                            $registro_proveedor=mysqli_fetch_assoc($proveedor);

                            //Consultamos por los nombres de las categorias correspondientes//
                            $sql_cat = "SELECT c.nombre AS nombre_categoria
                            FROM juegos AS j
                            JOIN categoria AS c ON j.id_cat = c.id_categoria
                            WHERE j.id_juego = '$editar'";
                            $categoria = mysqli_query($conexion, $sql_cat);
                            $registro_categoria=mysqli_fetch_assoc($categoria);

                            echo '<form action="" method="post">
                            <tr>
                                <td><label>'.$registro_editar['nombre'].'</label><input type="text" value="'.$registro_editar['nombre'].'" name="nombreJuego" id=""></td>
                                <td><label>'.$registro_categoria['nombre_categoria'].'</label><input type="text" disabled value="'.$registro_categoria['nombre_categoria'].'" name="Categoria" id=""></td>
                                <td id="a" title="555"><label>'.$registro_proveedor['nombre_proveedor'].'</label><input type="text" disabled value="'.$registro_proveedor['nombre_proveedor'].'" name="Proveedor" id=""></td>
                                <td><label>'.$registro_editar['precio'].'</label><input type="number" value="'.$registro_editar['precio'].'" name="precio" min=1 id=""></td>
                                <td><label>'.$registro_editar['ganancia'].'</label><input type="number" disabled value="'.$registro_editar['ganancia'].'" name="ganancia" id=""></td>                      
                                <td><label>'.$registro_editar['stock'].'</label><input type="number" value="'.$registro_editar['stock'].'" name="stock" id=""></td>                      
                                <td><input type="submit" name="actualizar" value="Actualizar"></td>
                            </tr>
                            </form>';
                        }
                        $i = 0;
                        if(isset($_POST['actualizar'])) {
                            $juego = $_POST['nombreJuego'];
                            $precio = $_POST['precio'];
                            $stock = $_POST['stock'];
                
                            $sql_ej = "UPDATE juegos SET nombre = '$juego', precio = '$precio', stock = '$stock' WHERE id_juego = '$editar'";
                            $consulta_editar_juego =  mysqli_query($conexion, $sql_ej) ? print("<script>alert('Registro modificado'); window.location = 'index.php' </script>") : print("<script>alert('ERROR al modificar') window.location = 'index.php' </script>");
                        }
                        // Número de resultados por página
                        $registros_por_pagina = 50;

                        // Obtener el número de página actual
                        $pagina_actual = isset($_GET['pagina']) ? $_GET['pagina'] : 1;

                        // Calcular el inicio de los resultados a mostrar
                        $inicio = ($pagina_actual - 1) * $registros_por_pagina;

                        // Consulta SQL con LIMIT para la paginación
                        $sql = "SELECT * FROM juegos LIMIT $inicio, $registros_por_pagina";
                        $juegos = mysqli_query($conexion, $sql);          
                            while ($registro=mysqli_fetch_assoc($juegos)) {
                                $sql = "SELECT * FROM categoria WHERE id_categoria = '$registro[id_cat]'";
                                $categoria = mysqli_query($conexion, $sql);
                                $registroCat=mysqli_fetch_assoc($categoria);
                                $sql = "SELECT * FROM proveedor WHERE id_proveedor = '$registro[id_pro]'";
                                $proveedor = mysqli_query($conexion, $sql);
                                $registroProv=mysqli_fetch_assoc($proveedor);
                                $i = $i++;
                                echo'
                                <tr id="tr'.$i.'">
                                    <td><label>'.$registro['nombre'].'</label><input type="text" value="'.$registro['nombre'].'" name="Nombre" id="nombreJuego'.$i.'" readonly></td>
                                    <td><label>'.$registroCat['nombre'].'</label><input type="text" value="'.$registroCat['nombre'].'" name="Categoria" id="" readonly></td>
                                    <td id="a" title="555"><label>'.$registroProv['nombre'].'</label><input type="text" value="'.$registroProv['nombre'].'" name="Proveedor" id="" readonly></td>
                                    <td><label>'.$registro['precio'].'</label><input type="number" value="'.$registro['precio'].'" name="Precio" id="" readonly></td>
                                    <td><label>'.$registro['ganancia'].'</label><input type="number" value="'.$registro['ganancia'].'" name="Ganancias" id="" readonly></td>
                                    <td><label>'.$registro['stock'].'</label><input type="number" value="'.$registro['stock'].'" name="Stock" id="" readonly></td>
                                    <td id="acciones">         
                                        <a href="index.php?editar='.$registro['id_juego'].'"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M410.3 231l11.3-11.3-33.9-33.9-62.1-62.1L291.7 89.8l-11.3 11.3-22.6 22.6L58.6 322.9c-10.4 10.4-18 23.3-22.2 37.4L1 480.7c-2.5 8.4-.2 17.5 6.1 23.7s15.3 8.5 23.7 6.1l120.3-35.4c14.1-4.2 27-11.8 37.4-22.2L387.7 253.7 410.3 231zM160 399.4l-9.1 22.7c-4 3.1-8.5 5.4-13.3 6.9L59.4 452l23-78.1c1.4-4.9 3.8-9.4 6.9-13.3l22.7-9.1v32c0 8.8 7.2 16 16 16h32zM362.7 18.7L348.3 33.2 325.7 55.8 314.3 67.1l33.9 33.9 62.1 62.1 33.9 33.9 11.3-11.3 22.6-22.6 14.5-14.5c25-25 25-65.5 0-90.5L453.3 18.7c-25-25-65.5-25-90.5 0zm-47.4 168l-144 144c-6.2 6.2-16.4 6.2-22.6 0s-6.2-16.4 0-22.6l144-144c6.2-6.2 16.4-6.2 22.6 0s6.2 16.4 0 22.6z"/></svg>  </a>         
                                        <a href="index.php?borrar='.$registro['id_juego'].'"><svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512"><!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#212121}</style><path d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z"/></svg></a>                                                
                                    </td>                        
                                </tr>
                                ';
                            }
                            echo '<p style="display: none;" id="juegosLength">'.$i.'</p>';
            // Consulta para obtener el número total de registros
$sql_total = "SELECT COUNT(*) as total FROM juegos";
$resultado_total = mysqli_query($conexion, $sql_total);
$datos_total = mysqli_fetch_assoc($resultado_total);
$total_registros = $datos_total['total'];

// Calcular el número total de páginas
$total_paginas = ceil($total_registros / $registros_por_pagina);
?>
    <!-- Agregar controles de navegación para la paginación -->
    
    <div class="pagination" style="display: flex;
                                width: 100%;
                                height: 60px;
                                background-color: var(--bgHeader);
                                justify-content: space-evenly;
                                align-items: center;">
        <?php if ($pagina_actual > 1): ?>
            <a style="text-decoration: none;" href="index.php?pagina=<?php echo $pagina_actual - 1; ?>">Anterior</a>
        <?php endif; ?>

        <?php for ($i = 1; $i <= $total_paginas; $i++): ?>
            <a style="text-decoration: none;" href="index.php?pagina=<?php echo $i; ?>" <?php echo ($pagina_actual == $i) ? 'class="active"' : ''; ?>><?php echo $i; ?></a>
        <?php endfor; ?>

        <?php if ($pagina_actual < $total_paginas): ?>
            <a style="text-decoration: none;" href="index.php?pagina=<?php echo $pagina_actual + 1; ?>">Siguiente</a>
        <?php endif; ?>
    </div>     
            </div>     
        </table>

    </div>        
    <script>
        const iconoNombre = document.querySelector(".orden-icon-nombre"); // Elemento del icono
        const iconoPrecio = document.querySelector(".orden-icon-precio"); // Elemento del icono
        const iconoGanancia = document.querySelector(".orden-icon-ganancia"); // Elemento del icono
        const iconoStock = document.querySelector(".orden-icon-stock"); // Elemento del icono
                    


            var inputBusqueda = document.getElementById("busquedaJuego");
            var resultadosJuegos = document.getElementById("resultadosJuegos");
            // Agrega un evento de focus al input
            inputBusqueda.addEventListener("focus", function() {
                // Cambia el estilo del div para que sea visible
                resultadosJuegos.style.display = "flex";
            });
            // Agrega un evento de blur al input
            inputBusqueda.addEventListener("blur", function() {
                // Oculta el div de resultados cuando se pierde el foco
                setTimeout(() => {
                    resultadosJuegos.style.display = "none";    
                }, 1000);
                
            });



            document.addEventListener('DOMContentLoaded', function() {
            const proveedorTitle = document.getElementById('proveedor-title');
            const proveedoresSelect = document.getElementById('proveedores');

            proveedorTitle.addEventListener('click', function() {
                // Alternar la clase 'show' para mostrar u ocultar el select
                proveedoresSelect.classList.toggle('show');
            });

            // Cierra el select si se hace clic fuera de él
            document.addEventListener('click', function(event) {
                if (event.target !== proveedorTitle && event.target !== proveedoresSelect) {
                    proveedoresSelect.classList.remove('show');
                }
            });
        });


                document.addEventListener('DOMContentLoaded', function() {
            const categoriaTitle = document.getElementById('categoria-title');
            const categoriasSelect = document.getElementById('categorias');

            categoriaTitle.addEventListener('click', function() {
                // Alternar la clase 'show' para mostrar u ocultar el select
                categoriasSelect.classList.toggle('show');
            });

            // Cierra el select si se hace clic fuera de él
            document.addEventListener('click', function(event) {
                if (event.target !== categoriaTitle && event.target !== categoriasSelect) {
                    categoriasSelect.classList.remove('show');
                }
            });
        });
                const toggleThemeButton = document.getElementById('toggle-theme');

                function toggleTheme() {
                    const currentTheme = document.documentElement.getAttribute('data-theme');
                    const newTheme = currentTheme === 'light' ? 'dark' : 'light';
                    document.documentElement.setAttribute('data-theme', newTheme);
                }

                toggleThemeButton.addEventListener('click', toggleTheme);

                // Establece el tema predeterminado al cargar la página
                document.addEventListener('DOMContentLoaded', function() {
                    // Si el tema no se ha establecido, establece 'light' como predeterminado
                    if (!document.documentElement.hasAttribute('data-theme')) {
                        document.documentElement.setAttribute('data-theme', 'light');
                    }
                });
            // NOMBRE
            let ordenNombreAscendente = true;
            const celdaNombre = document.querySelector(".nombre");
            celdaNombre.addEventListener("click", function () {
                const filas = Array.from(tabla.rows).slice(1);
                filas.sort((filaA, filaB) => {
                    const nombreA = filaA.cells[0].textContent; 
                    const nombreB = filaB.cells[0].textContent;

                    if (ordenNombreAscendente) {
                        return nombreA.localeCompare(nombreB); 
                    } else {
                        return nombreB.localeCompare(nombreA); 
                    }
                });
                ordenNombreAscendente = !ordenNombreAscendente;
                while (tabla.rows.length > 1) {
                    tabla.deleteRow(1);
                }
                filas.forEach((fila) => {
                    tabla.appendChild(fila);
                });

                // Cambia la visibilidad y el ícono del orden
                iconoPrecio.style.display = "none";
                iconoGanancia.style.display = "none";
                iconoStock.style.display = "none";
                iconoNombre.style.display = "inline-block";
                iconoNombre.textContent = ordenNombreAscendente ? "\u25BC" : "\u25B2"; // Flecha hacia arriba o abajo
            });
            //PRECIO    
                const tabla = document.getElementById("miTabla");
                const columnaPrecio = tabla.rows[0].cells[3]; 
                let ordenAscendente = true; 
                columnaPrecio.addEventListener("click", function () {
                    const filas = Array.from(tabla.rows).slice(1);
                    filas.sort((filaA, filaB) => {
                        const precioA = parseFloat(filaA.cells[3].textContent);
                        const precioB = parseFloat(filaB.cells[3].textContent);
        
                        if (ordenAscendente) {
                            return precioA - precioB; 
                        } else {
                            return precioB - precioA; 
                        }
                    });            
                    ordenAscendente = !ordenAscendente;
                    while (tabla.rows.length > 1) {
                        tabla.deleteRow(1);
                    }
                    filas.forEach((fila) => {
                        tabla.appendChild(fila);
                    });
                    // Cambia la visibilidad y el ícono del orden
                        iconoNombre.style.display = "none";
                        iconoGanancia.style.display = "none";
                        iconoStock.style.display = "none";
                        iconoPrecio.style.display = "inline-block";
                        iconoPrecio.textContent = ordenAscendente ? "\u25BC" : "\u25B2"; // Flecha hacia arriba o abajo
                });

            //GANANCIA
                const columnaGanancia = tabla.rows[0].cells[4]; 
                let ordenAscendenteGanancia = true;
                columnaGanancia.addEventListener("click", function () {
                    const filas = Array.from(tabla.rows).slice(1);
                    filas.sort((filaA, filaB) => {
                        const gananciaA = parseFloat(filaA.cells[4].textContent);
                        const gananciaB = parseFloat(filaB.cells[4].textContent);
                        if (ordenAscendenteGanancia) {
                            return gananciaA - gananciaB;
                        } else {
                            return gananciaB - gananciaA;
                        }
                    });
                    ordenAscendenteGanancia = !ordenAscendenteGanancia;
                    while (tabla.rows.length > 1) {
                        tabla.deleteRow(1);
                    }
                    filas.forEach((fila) => {
                        tabla.appendChild(fila);
                    });
                     // Cambia la visibilidad y el ícono del orden
                        iconoNombre.style.display = "none";
                        iconoPrecio.style.display = "none";
                        iconoStock.style.display = "none";
                        iconoGanancia.style.display = "inline-block";
                        iconoGanancia.textContent = ordenAscendenteGanancia ? "\u25BC" : "\u25B2"; // Flecha hacia arriba o abajo
                });

            //STOCK
                const columnaStock = tabla.rows[0].cells[5];
                let ordenAscendenteStock = true;
                columnaStock.addEventListener("click", function () {
                    const filas = Array.from(tabla.rows).slice(1);
                    filas.sort((filaA, filaB) => {
                        const stockA = parseInt(filaA.cells[5].textContent, 10);
                        const stockB = parseInt(filaB.cells[5].textContent, 10);
                        if (ordenAscendenteStock) {
                            return stockA - stockB;
                        } else {
                            return stockB - stockA;
                        }
                    });
                    ordenAscendenteStock = !ordenAscendenteStock;
                    while (tabla.rows.length > 1) {
                        tabla.deleteRow(1);
                    }
                    filas.forEach((fila) => {
                        tabla.appendChild(fila);
                    });
                     // Cambia la visibilidad y el ícono del orden
                        iconoNombre.style.display = "none";
                        iconoGanancia.style.display = "none";
                        iconoPrecio.style.display = "none";
                        iconoStock.style.display = "inline-block";
                        iconoStock.textContent = ordenAscendenteStock ? "\u25BC" : "\u25B2"; // Flecha hacia arriba o abajo
                });

            //CATEGORIA
                const selectCategorias = document.getElementById("categorias");
                const filas = Array.from(tabla.rows).slice(1);        
                selectCategorias.addEventListener("change", function () {
                    const opcionesSeleccionadas = Array.from(selectCategorias.selectedOptions).map(option => option.value);
                    filas.forEach(fila => {
                        const categoria = fila.cells[1].textContent;
                        if (opcionesSeleccionadas.includes("Todos") || opcionesSeleccionadas.includes(categoria)) {
                            fila.style.display = "table-row";
                        } else {
                            fila.style.display = "none";
                        }
                    });
                });        
                selectCategorias.addEventListener("click", function () {
                    if (selectCategorias.value === "Todos") {
                        if (selectCategorias.selectedOptions.length > 1) {
                            selectCategorias.options[0].selected = false;
                        } else {
                            selectCategorias.options[0].selected = true;
                        }
                    } else {
                        selectCategorias.options[0].selected = false;
                    }
                });

            //PROVEEDORES
                const selectProveedores = document.getElementById("proveedores");
                const filasP = Array.from(tabla.rows).slice(1);
                selectProveedores.addEventListener("change", function () {
                    const proveedoresSeleccionados = Array.from(selectProveedores.selectedOptions).map(option => option.value);
                    filasP.forEach(fila => {
                        const proveedor = fila.cells[2].textContent;
                        if (proveedoresSeleccionados.includes("Todos") || proveedoresSeleccionados.includes(proveedor)) {
                            fila.style.display = "table-row";
                        } else {
                            fila.style.display = "none";
                        }
                    });
                });
                selectProveedores.addEventListener("click", function () {
                    if (selectProveedores.value === "Todos") {
                        if (selectProveedores.selectedOptions.length > 1) {
                            selectProveedores.options[0].selected = false;
                        } else {
                            selectProveedores.options[0].selected = true;
                        }
                    } else {
                        selectProveedores.options[0].selected = false;
                    }
                });
    </script>
    <script src="/juegosDeMesa/juegosDeMesa/busqueda.js"></script>

</body>
</html>