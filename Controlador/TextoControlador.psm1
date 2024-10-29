# Clase TextoControlador: Controla la interacción entre el modelo y la vista
using module ../Modelo/TextoModelo.psm1
using module ../Vista/TextoVista.psm1

class TextoControlador {
    # Instancias de las clases TextoModelo y TextoVista
    [TextoModelo]$modelo
    [TextoVista]$vista

    # Constructor para inicializar el modelo y la vista
    TextoControlador([TextoModelo]$modelo, [TextoVista]$vista) {
        $this.modelo = $modelo
        $this.vista = $vista
    }

    # Método para actualizar el texto en el modelo
    [void] ActualizarTexto([string]$mensaje) {
        $this.modelo.ActualizarMensaje($mensaje)
    }

    # Método para mostrar el texto usando la vista
    [void] MostrarTexto() {
        $mensaje = $this.modelo.ObtenerMensaje()
        $this.vista.MostrarTexto($mensaje)
    }
}
