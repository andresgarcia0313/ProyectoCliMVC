class TextoModelo {
    # Propiedad privada
    [string]$mensaje

    # Constructor para inicializar el mensaje
    TextoModelo([string]$mensajeInicial) {
        $this.mensaje = $mensajeInicial
    }

    # Método para obtener el mensaje actual
    [string] ObtenerMensaje() {
        return $this.mensaje
    }

    # Método para actualizar el mensaje
    [void] ActualizarMensaje([string]$nuevoMensaje) {
        $this.mensaje = $nuevoMensaje
    }
}
Export-ModuleMember -Class TextoModelo