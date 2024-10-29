# Clase TextoVista: Muestra el mensaje al usuario
class TextoVista {
    # Método para mostrar texto en la consola
    [void] MostrarTexto([string]$mensaje) {
        Write-Host $mensaje
    }
}
Export-ModuleMember -Class TextoVista