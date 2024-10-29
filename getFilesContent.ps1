# getFilesContent.ps1

param (
    # Parámetro opcional para el nombre del archivo de salida con un valor predeterminado
    [string]$OutputFile = "./salida_archivos.txt"
)

# Nombre del archivo del script actual
$currentScript = "getFilesContent.ps1"

# Listar solo archivos de forma recursiva, excluyendo el archivo del script y el de salida
Get-ChildItem -Recurse -File | ForEach-Object { 
    if ($_.Name -ne $currentScript -and $_.FullName -ne (Resolve-Path $OutputFile).Path) {
        Write-Output "Archivo:" $_.FullName | Out-File -FilePath $OutputFile -Append
        Get-Content $_.FullName | ForEach-Object { 
            Write-Output $_ | Out-File -FilePath $OutputFile -Append 
        }
        Write-Output "`n" | Out-File -FilePath $OutputFile -Append  # Salto de línea entre archivos
    }
}

# Mensaje final
Write-Output "La ejecución ha finalizado. El contenido se ha guardado en $OutputFile"
