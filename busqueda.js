let query = document.getElementById("busquedaJuego");
let contenido = document.getElementById("resultadosJuegos");
let boton = document.getElementById('notify')
let url

async function cargarContenido(url) {
    async function getData(url) {
      const response = await fetch(url);
      const data = await response.text();
      return data;
    }
    
    await getData(url).then(data => {
        contenido.innerHTML = data;
    }); 
}
async function pacientes() {
    for (let index = 0; index < 3; index++) {
        let paciente = document.getElementById('pacientes'+index)
        paciente.addEventListener('mouseover', async function () {
            paciente.style.backgroundColor = 'red'
        })
        paciente.addEventListener('mouseleave', async function () {
            paciente.style.backgroundColor = ''
        })
        paciente.addEventListener('mouseover', async function () {
            let dni = document.getElementById('dni'+index).innerHTML
            let form = document.getElementById('formAct')
            let data
            async function getData(url) {
                const response = await fetch(url);
                data = await response.text();
                return data;
            }
            await getData(`./functions/paciente.php?dni=${dni}`).then(async function(e) {
                form.innerHTML = data;
                console.log(data)
                console.log(form)
                form.submit()
            }); 
            console.log(form)
        })
    }
}

query.addEventListener('keydown', async function () {
    console.log('click')
    setTimeout(async () => {
        url = './functions/pacientes.php?query='+query.value;
        await cargarContenido(url)
        await pacientes()
    }, 20);

})