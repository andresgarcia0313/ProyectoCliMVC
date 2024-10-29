# Cargar las clases

using module ./Modelo/TextoModelo.psm1
using module ./Vista/TextoVista.psm1
using module ./Controlador/TextoControlador.psm1


# Crear instancias de cada clase
$modelo = [TextoModelo]::new("Hola, MVC!")
$vista = [TextoVista]::new()
$controlador = [TextoControlador]::new($modelo, $vista)

# Mostrar el mensaje inicial
$controlador.MostrarTexto()

# Actualizar el mensaje y volver a mostrarlo
$controlador.ActualizarTexto("¡Texto actualizado!")
$controlador.MostrarTexto()
