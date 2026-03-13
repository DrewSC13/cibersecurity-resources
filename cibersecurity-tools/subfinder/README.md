# Subfinder

## Descripción

**Subfinder** es una herramienta de reconocimiento pasivo desarrollada por **ProjectDiscovery** que permite descubrir subdominios de un dominio objetivo utilizando múltiples fuentes OSINT.

La herramienta consulta diferentes servicios públicos, APIs y bases de datos para encontrar subdominios asociados a un dominio sin interactuar directamente con el objetivo.

Esto la convierte en una herramienta ideal para la fase de **reconocimiento en pentesting, bug bounty y análisis de superficie de ataque**.

Subfinder es conocida por ser:

- rápida
- modular
- extensible
- altamente automatizable

---

## Tipo de herramienta

Reconocimiento / OSINT / Subdomain Enumeration

---

## Lenguaje

Go

---

## Repositorio oficial

https://github.com/projectdiscovery/subfinder

---

# Instalación

## Instalación con Go

```bash
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
```


La herramienta se instalará en:

~/go/bin/subfinder

Agregar al PATH si es necesario:

export PATH=$PATH:~/go/bin
Instalación manual
git clone https://github.com/projectdiscovery/subfinder.git

cd subfinder/v2/cmd/subfinder

go build

./subfinder -h
Instalación con Docker
docker pull projectdiscovery/subfinder

Ejemplo de ejecución:

docker run projectdiscovery/subfinder -d example.com
Uso básico

Enumerar subdominios de un dominio:

subfinder -d example.com

Salida típica:

api.example.com
dev.example.com
mail.example.com
test.example.com
Opciones principales
Enumerar un dominio
subfinder -d example.com
Guardar resultados en archivo
subfinder -d example.com -o subdomains.txt
Leer dominios desde archivo
subfinder -dL domains.txt
Modo silencioso (solo resultados)
subfinder -d example.com -silent
Usar múltiples threads
subfinder -d example.com -t 50
Resolver subdominios encontrados
subfinder -d example.com -resolve
Uso en pipelines de reconocimiento

Subfinder suele combinarse con otras herramientas del ecosistema ProjectDiscovery.

Ejemplo:

subfinder -d example.com -silent | httpx

Pipeline típico de bug bounty:

subfinder -d example.com -silent \
| httpx -silent \
| nuclei
Fuentes OSINT utilizadas

Subfinder consulta múltiples servicios públicos, entre ellos:

AlienVault

Censys

CertSpotter

Chaos

CommonCrawl

CRT.sh

GitHub

HackerTarget

LeakIX

Netlas

SecurityTrails

Shodan

VirusTotal

WaybackArchive

WhoisXML

ZoomEye

Algunas fuentes requieren API keys para aumentar los resultados.

Configuración de APIs

Subfinder permite usar APIs externas mediante un archivo de configuración.

Ubicación del archivo:

~/.config/subfinder/provider-config.yaml

Ejemplo:

shodan:
  - SHODAN_API_KEY

virustotal:
  - VIRUSTOTAL_API_KEY

securitytrails:
  - SECURITYTRAILS_API_KEY

Esto mejora significativamente la enumeración.

Casos de uso

Subfinder es utilizado en:

pentesting

bug bounty

red team

OSINT

mapeo de superficie de ataque

auditorías de seguridad

Ventajas

Enumeración pasiva (no interactúa con el objetivo)

Muy rápido

Soporte para múltiples fuentes OSINT

Integración con herramientas ProjectDiscovery

Fácil automatización en pipelines

Limitaciones

depende de fuentes OSINT externas

algunas fuentes requieren API

no realiza brute-force de subdominios

Para brute-force se recomienda usar herramientas como:

dnsx

amass

shuffledns

Ejemplo práctico

Enumerar subdominios y guardar resultados:

subfinder -d target.com -o subs.txt

Filtrar dominios activos:

cat subs.txt | httpx -silent

Escanear vulnerabilidades:

cat subs.txt | httpx | nuclei
Herramientas relacionadas

Dentro de este repositorio:

assetfinder

nuclei

rustscan

theHarvester

Advertencia

Esta herramienta debe utilizarse únicamente en:

laboratorios

entornos controlados

auditorías autorizadas

El uso sin autorización puede ser ilegal.

Autor

ProjectDiscovery

https://projectdiscovery.io