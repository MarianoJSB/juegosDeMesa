
    <?php
        include('./conexion.php');
        $query = $_GET['query'];
        $juego = '';
        $results = false;

        // $sql = "SELECT * FROM pacientes WHERE nombre LIKE '$query'";
        // $paciente = mysqli_query($conexion, $sql);
            // if (preg_match('', $query)) {                
            //     $stmt = $conexion->prepare("SELECT * FROM juego WHERE dni LIKE ?");
            //     $searchString = $query . '%';
            //     $stmt->bind_param("s", $searchString);
            //     $stmt->execute();
            //     $juego = $stmt->get_result();
            //     $results = true;
            // }                
                $stmt = $conexion->prepare("SELECT * FROM juegos WHERE nombre LIKE ?");
                $searchString = $query . '%';
                $stmt->bind_param("s", $searchString);
                $stmt->execute();
                $juego = $stmt->get_result();
                $results = true;       
    ?>    
    <?php
          if ($results) {
            $i =0;
            while ($row = mysqli_fetch_assoc($juego) ){      
                    $sql = "SELECT * FROM categoria WHERE id_categoria = '$row[id_cat]'";
                    $categoria = mysqli_query($conexion, $sql);
                    $registroCat=mysqli_fetch_assoc($categoria);
                    $sql = "SELECT * FROM proveedor WHERE id_proveedor = '$row[id_pro]'";
                    $proveedor = mysqli_query($conexion, $sql);
                    $registroProv=mysqli_fetch_assoc($proveedor);             
                if($i<5){
                    echo '
                        <p id="nombreId'.$i.'">'.$row['nombre'].'</p>
                        <p style="display: none;" id="nombreCat'.$i.'">'.$registroCat['nombre'].'</p>
                        <p style="display: none;" id="nombreProv'.$i.'">'.$registroProv['nombre'].'</p>
                        <p style="display: none;" id="ganancia'.$i.'">'.$row['ganancia'].'</p>
                        <p style="display: none;" id="precio'.$i.'">'.$row['precio'].'</p>
                        <p style="display: none;" id="stock'.$i.'">'.$row['stock'].'</p>
                        <p style="display: none;" id="id'.$i.'">'.$row['id_juego'].'</p>
                    ';
                    if($i<4){
                        echo'
                        <div class="div"></div>';
                    };
                    $i +=1;
                }
                else{                    
                }
            }
          }