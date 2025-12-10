# Assetfinder

`assetfinder` es una herramienta OSINT escrita en Go que permite **encontrar dominios y subdominios relacionados** con un dominio objetivo, utilizando varias fuentes públicas de información.

Es ideal para la fase de **reconocimiento pasivo** en hacking ético, bug bounty, CTFs y auditorías de seguridad.

---

## 🧩 ¿Qué hace Assetfinder?

Dado un dominio (por ejemplo: `example.com`), `assetfinder` busca:

- Dominios relacionados
- Subdominios
- Resultados en múltiples fuentes OSINT

Fuentes utilizadas (según la versión clásica del proyecto):

- CertSpotter  
- crt.sh  
- Hackertarget  
- Threatcrowd  
- Wayback Machine  
- BufferOver  
- Urlscan  
- VirusTotal (requiere API key)  

> Nota: algunas fuentes pueden tener límites de uso o requerir API key.

---

## 📦 Instalación

### 🔹 Requisitos

- Tener **Go** instalado (Go 1.18+ recomendado).
- Tener el `GOPATH/bin` en tu `PATH` (opcional pero recomendado).

Puedes comprobar tu versión de Go con:

go version

🔹 Instalación con go install (recomendada)
go install github.com/tomnomnom/assetfinder@latest


Esto descargará, compilará e instalará el binario en:

$GOPATH/bin/assetfinder


Si tienes Go configurado correctamente, deberías poder ejecutarlo con:

assetfinder -h

🔹 Compilar desde el código fuente (esta carpeta)

Si tienes este repositorio clonado en:

cibersecurity-tools/assetfinder/


puedes compilar el binario desde aquí:

cd assetfinder
go build -o assetfinder main.go


Esto generará un binario llamado assetfinder en la misma carpeta.
Opcionalmente, puedes moverlo a tu PATH:

sudo mv assetfinder /usr/local/bin/

⚙️ Uso básico

La sintaxis general es:

assetfinder [--subs-only] <dominio>


Parámetros:

<dominio> → dominio objetivo (ej: example.com)

--subs-only → muestra solo subdominios, sin incluir el dominio raíz

🔑 API Keys (VirusTotal y otros)

Algunas fuentes como VirusTotal requieren API key para funcionar.

Assetfinder buscará la API key de VirusTotal en la variable de entorno:

export VIRUSTOTAL_API_KEY="tu_api_key_aqui"


Puedes agregar esto a tu ~/.bashrc, ~/.zshrc o similar para que se cargue siempre.

🧱 Estructura de esta carpeta

Este directorio contiene:

main.go → código principal del programa

crtsh.go, certspotter.go, wayback.go, etc. → integraciones con distintas fuentes

virustotal.go → integración con VirusTotal

ratelimit.go → manejo de límites de peticiones

script/ → scripts auxiliares (si los hay)

LICENSE → licencia del proyecto original (MIT)

📎 Créditos

Proyecto original:
https://github.com/tomnomnom/assetfinder

