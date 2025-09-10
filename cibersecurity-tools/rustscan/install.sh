#!/bin/bash
# ===================================================================
# Instalador automático de RustScan
# Autor: DrewSC13
# Descripción: Este script descarga e instala la última versión
# de RustScan según la arquitectura de tu sistema (Linux x86_64 o ARM64)
# ===================================================================

set -e

# Detectar arquitectura del sistema
ARCH=$(uname -m)
echo "[*] Detectando arquitectura de sistema: $ARCH"

# URL base de releases de RustScan
BASE_URL="https://github.com/RustScan/RustScan/releases/latest/download"

# Seleccionar archivo según arquitectura
case "$ARCH" in
    x86_64)
        FILE="rustscan_amd64.deb"
        ;;
    aarch64)
        FILE="rustscan_arm64.deb"
        ;;
    *)
        echo "[!] Arquitectura no soportada automáticamente: $ARCH"
        echo "Por favor descarga manualmente desde:"
        echo "https://github.com/RustScan/RustScan/releases"
        exit 1
        ;;
esac

# Descargar archivo
echo "[*] Descargando RustScan ($FILE)..."
wget -q "$BASE_URL/$FILE" -O /tmp/$FILE

# Instalar archivo descargado
echo "[*] Instalando RustScan..."
sudo dpkg -i /tmp/$FILE || sudo apt-get install -f -y

# Verificar instalación
if command -v rustscan &>/dev/null; then
    echo "[+] RustScan instalado correctamente!"
    rustscan -V
else
    echo "[!] Error: RustScan no se instaló correctamente."
fi

# Limpiar archivo temporal
rm -f /tmp/$FILE
