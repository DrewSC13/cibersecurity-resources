# Subfinder

## Descripción

**Subfinder** es una herramienta de **enumeración pasiva de subdominios** desarrollada por **ProjectDiscovery** que permite descubrir subdominios asociados a un dominio objetivo utilizando múltiples fuentes OSINT.

La herramienta recopila información desde servicios públicos, APIs y bases de datos de Internet para identificar subdominios relacionados con una organización sin interactuar directamente con la infraestructura objetivo.

Subfinder es ampliamente utilizada en **pentesting, bug bounty y auditorías de seguridad** para ampliar la superficie de ataque durante la fase de reconocimiento.

Características principales:

* enumeración pasiva de subdominios
* integración con múltiples fuentes OSINT
* alta velocidad de procesamiento
* soporte para APIs externas
* integración con pipelines de reconocimiento

---

## Tipo de herramienta

Reconnaissance / OSINT / Subdomain Enumeration

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

```text
~/go/bin/subfinder
```

Agregar al PATH si es necesario:

```bash
export PATH=$PATH:~/go/bin
```

---

## Instalación manual

```bash
git clone https://github.com/projectdiscovery/subfinder.git

cd subfinder/v2/cmd/subfinder

go build

./subfinder -h
```

---

## Instalación con Docker

```bash
docker pull projectdiscovery/subfinder
```

Ejemplo de ejecución:

```bash
docker run projectdiscovery/subfinder -d example.com
```

---

# Uso básico

Enumerar subdominios de un dominio:

```bash
subfinder -d example.com
```

Salida típica:

```
api.example.com
mail.example.com
dev.example.com
test.example.com
```

---

# Opciones principales

### Enumerar un dominio

```bash
subfinder -d example.com
```

---

### Guardar resultados en archivo

```bash
subfinder -d example.com -o subdomains.txt
```

---

### Leer dominios desde archivo

```bash
subfinder -dL domains.txt
```

---

### Modo silencioso

```bash
subfinder -d example.com -silent
```

---

### Resolver subdominios encontrados

```bash
subfinder -d example.com -resolve
```

---

### Aumentar número de threads

```bash
subfinder -d example.com -t 50
```

---

# Fuentes OSINT utilizadas

Subfinder consulta múltiples servicios públicos para descubrir subdominios, entre ellos:

* AlienVault
* Censys
* CertSpotter
* Chaos
* CommonCrawl
* CRT.sh
* GitHub
* HackerTarget
* LeakIX
* Netlas
* SecurityTrails
* Shodan
* VirusTotal
* Wayback Archive
* WhoisXML
* ZoomEye

Algunas fuentes requieren **API keys** para obtener mejores resultados.

---

# Configuración de APIs

Las APIs se configuran en:

```
~/.config/subfinder/provider-config.yaml
```

Ejemplo:

```yaml
shodan:
  - API_KEY

virustotal:
  - API_KEY

securitytrails:
  - API_KEY
```

Esto aumenta significativamente la cantidad de subdominios encontrados.

---

# Uso en pipelines de reconocimiento

Subfinder se integra fácilmente con otras herramientas.

### Enumeración de subdominios y verificación de servicios web

```bash
subfinder -d example.com -silent | httpx
```

---

### Pipeline completo de reconocimiento

```bash
subfinder -d example.com -silent \
| naabu \
| httpx \
| nuclei
```

Este pipeline permite:

1. descubrir subdominios
2. identificar puertos abiertos
3. detectar servicios web activos
4. escanear vulnerabilidades

---

# Casos de uso

Subfinder se utiliza en:

* pentesting
* bug bounty
* red teaming
* OSINT
* auditorías de seguridad
* descubrimiento de infraestructura

---

# Ventajas

* enumeración pasiva
* extremadamente rápido
* integración con herramientas modernas
* fácil automatización en pipelines

---

# Limitaciones

* depende de fuentes OSINT externas
* algunas fuentes requieren API
* no realiza brute-force de subdominios

Para ampliar la enumeración se recomienda utilizar:

* assetfinder
* amass
* dnsx

---

# Ejemplo práctico

Enumerar subdominios:

```bash
subfinder -d target.com -silent
```

Verificar servicios web:

```bash
subfinder -d target.com -silent | httpx
```

Escanear vulnerabilidades:

```bash
subfinder -d target.com -silent \
| httpx \
| nuclei
```

---

# Herramientas relacionadas

Dentro de este repositorio:

* assetfinder
* naabu
* nuclei
* rustscan
* theHarvester

---

# Advertencia

Esta herramienta debe utilizarse únicamente en:

* laboratorios
* entornos controlados
* auditorías autorizadas

El uso no autorizado contra sistemas externos puede ser ilegal.

---

# Autor

ProjectDiscovery

https://projectdiscovery.io

---

# Licencia

MIT License
