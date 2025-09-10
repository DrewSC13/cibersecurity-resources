# 🔍 RustScan

RustScan es un escáner de puertos **ultrarrápido** escrito en Rust. Combina velocidad y precisión al detectar puertos abiertos y, opcionalmente, delega a **Nmap** para el análisis detallado de servicios.

- **Repositorio oficial:** [https://github.com/RustScan/RustScan](https://github.com/RustScan/RustScan)
- **Plataformas soportadas:** Linux, macOS y Windows
- **Uso típico:** reconocimiento de redes, enumeración de puertos y servicios antes de auditorías de seguridad

---

## 🚀 Instalación

Para instalar la última versión automáticamente en sistemas Debian/Ubuntu:

```bash
chmod +x install.sh
./install.sh
Esto descargará el .deb oficial más reciente desde GitHub y lo instalará en tu sistema.

📝 Ejemplos de uso
Escaneo rápido de puertos:

bash
Copiar código
rustscan -a 192.168.1.1
Escaneo con Nmap para enumerar servicios:

bash
Copiar código
rustscan -a 192.168.1.1 -- -A -sC -sV
Escaneo de rango de IPs:

bash
Copiar código
rustscan -a 192.168.1.1-254
Ver versión instalada:

bash
Copiar código
rustscan -V
📁 Estructura en este repositorio
bash
Copiar código
tools/
 └── rustscan/
     ├── README.md      # Este archivo
     ├── install.sh     # Script instalador
     └── usage.md       # Comandos y ejemplos
⚠️ Nota Legal
Esta herramienta se proporciona únicamente con fines educativos y de auditoría autorizada. El uso no autorizado contra sistemas ajenos puede violar leyes locales e internacionales.

bash
Copiar código

---

## 📄 `tools/rustscan/install.sh`

```bash
#!/bin/bash
# Instalador automático de RustScan
# Autor: DrewSC13

set -e

ARCH=$(uname -m)
RELEASE_URL="https://github.com/RustScan/RustScan/releases/latest/download"

if [[ "$ARCH" == "x86_64" ]]; then
    FILE="rustscan_amd64.deb"
elif [[ "$ARCH" == "aarch64" ]]; then
    FILE="rustscan_arm64.deb"
else
    echo "Arquitectura no soportada automáticamente. Descarga manual desde:"
    echo "https://github.com/RustScan/RustScan/releases"
    exit 1
fi

echo "[*] Descargando RustScan para $ARCH..."
wget -q "$RELEASE_URL/$FILE" -O /tmp/$FILE

echo "[*] Instalando..."
sudo dpkg -i /tmp/$FILE || sudo apt-get install -f -y

echo "[+] RustScan instalado correctamente. Verifica con: rustscan -V"
