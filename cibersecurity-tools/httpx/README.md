# HTTPX

## Descripción

**HTTPX** es una herramienta desarrollada por **ProjectDiscovery** utilizada para identificar y analizar servicios HTTP y HTTPS en hosts o dominios.

Permite detectar rápidamente qué subdominios tienen servicios web activos y obtener información adicional como:

* títulos de páginas
* códigos de estado
* tecnologías detectadas
* redirecciones
* certificados TLS
* servidores web

HTTPX es una herramienta clave en la fase de **reconocimiento y enumeración web** durante auditorías de seguridad, pentesting y bug bounty.

Características principales:

* detección rápida de servicios HTTP/HTTPS
* soporte para múltiples hosts
* análisis de respuestas web
* integración con pipelines de reconocimiento
* automatización sencilla

---

## Tipo de herramienta

Web Reconnaissance / HTTP Scanner / Service Detection

---

## Lenguaje

Go

---

## Repositorio oficial

https://github.com/projectdiscovery/httpx

---

# Instalación

## Instalación con Go

```bash
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
```

Agregar al PATH si es necesario:

```bash
export PATH=$PATH:~/go/bin
```

---

## Instalación manual

```bash
git clone https://github.com/projectdiscovery/httpx.git

cd httpx/cmd/httpx

go build

./httpx -h
```

---

## Instalación con Docker

```bash
docker pull projectdiscovery/httpx
```

Ejemplo:

```bash
docker run projectdiscovery/httpx -u https://example.com
```

---

# Uso básico

Detectar servicios web en un host:

```bash
httpx -u example.com
```

Salida típica:

```
https://example.com [200]
```

---

# Opciones principales

### Escanear un dominio

```bash
httpx -u example.com
```

---

### Escanear múltiples hosts

```bash
httpx -l hosts.txt
```

---

### Mostrar título de la página

```bash
httpx -u example.com -title
```

---

### Mostrar tecnología detectada

```bash
httpx -u example.com -tech-detect
```

---

### Mostrar código de estado

```bash
httpx -u example.com -status-code
```

---

### Guardar resultados

```bash
httpx -l hosts.txt -o results.txt
```

---

### Modo silencioso

```bash
httpx -l hosts.txt -silent
```

---

# Uso en pipelines de reconocimiento

HTTPX se integra fácilmente con otras herramientas.

### Verificar servicios web de subdominios

```bash
subfinder -d example.com -silent | httpx
```

---

### Descubrir puertos abiertos y servicios web

```bash
subfinder -d example.com -silent \
| naabu \
| httpx
```

---

### Pipeline completo de reconnaissance

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

HTTPX se utiliza en:

* pentesting
* bug bounty
* red teaming
* auditorías de seguridad
* descubrimiento de servicios web
* análisis de infraestructura

---

# Ventajas

* extremadamente rápido
* fácil automatización
* integración con herramientas modernas
* múltiples opciones de análisis HTTP

---

# Limitaciones

* no realiza escaneo profundo de vulnerabilidades
* requiere otras herramientas para análisis avanzado

Para análisis adicional se recomienda:

* nuclei
* nikto
* zap
* burpsuite

---

# Ejemplo práctico

Detectar hosts web activos:

```bash
subfinder -d target.com -silent | httpx
```

Escanear vulnerabilidades web:

```bash
subfinder -d target.com -silent \
| httpx \
| nuclei
```

---

# Herramientas relacionadas

Dentro de este repositorio:

* assetfinder
* subfinder
* naabu
* nuclei
* rustscan

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
