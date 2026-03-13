# DNSX

## Descripción

**DNSX** es una herramienta desarrollada por **ProjectDiscovery** utilizada para realizar **consultas DNS rápidas y masivas** sobre dominios y subdominios.

Permite resolver registros DNS, detectar subdominios válidos y realizar filtrado avanzado de resultados, lo que la convierte en una herramienta fundamental en la fase de **reconocimiento y enumeración de infraestructura** durante auditorías de seguridad, pentesting y bug bounty.

DNSX está optimizada para trabajar en **pipelines de reconnaissance**, integrándose fácilmente con otras herramientas del ecosistema ProjectDiscovery.

Características principales:

* resolución masiva de DNS
* detección de subdominios válidos
* consultas de múltiples tipos de registros DNS
* alta velocidad de resolución
* integración sencilla en pipelines de reconocimiento

---

## Tipo de herramienta

DNS Enumeration / DNS Resolver / Reconnaissance

---

## Lenguaje

Go

---

## Repositorio oficial

https://github.com/projectdiscovery/dnsx

---

# Instalación

## Instalación con Go

```bash
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
```

Agregar al PATH si es necesario:

```bash
export PATH=$PATH:~/go/bin
```

---

## Instalación manual

```bash
git clone https://github.com/projectdiscovery/dnsx.git

cd dnsx/cmd/dnsx

go build

./dnsx -h
```

---

## Instalación con Docker

```bash
docker pull projectdiscovery/dnsx
```

Ejemplo de ejecución:

```bash
docker run projectdiscovery/dnsx -l domains.txt
```

---

# Uso básico

Resolver registros DNS de un dominio:

```bash
dnsx -d example.com
```

Salida típica:

```
example.com [A] 93.184.216.34
```

---

# Opciones principales

### Resolver un dominio

```bash
dnsx -d example.com
```

---

### Resolver múltiples dominios

```bash
dnsx -l domains.txt
```

---

### Consultar registro A

```bash
dnsx -d example.com -a
```

---

### Consultar registro MX

```bash
dnsx -d example.com -mx
```

---

### Consultar registro TXT

```bash
dnsx -d example.com -txt
```

---

### Guardar resultados

```bash
dnsx -l domains.txt -o results.txt
```

---

### Modo silencioso

```bash
dnsx -l domains.txt -silent
```

---

# Uso en pipelines de reconocimiento

DNSX suele utilizarse junto con herramientas de enumeración de subdominios.

### Resolver subdominios encontrados

```bash
subfinder -d example.com -silent | dnsx
```

---

### Verificar subdominios válidos

```bash
assetfinder --subs-only example.com | dnsx
```

---

### Pipeline completo de reconnaissance

```bash
subfinder -d example.com -silent \
| dnsx \
| naabu \
| httpx \
| nuclei
```

Este pipeline permite:

1. descubrir subdominios
2. verificar registros DNS válidos
3. identificar puertos abiertos
4. detectar servicios web
5. escanear vulnerabilidades

---

# Casos de uso

DNSX se utiliza en:

* pentesting
* bug bounty
* red teaming
* auditorías de seguridad
* descubrimiento de infraestructura
* enumeración DNS

---

# Ventajas

* extremadamente rápido
* consultas DNS masivas
* fácil integración en pipelines
* bajo consumo de recursos

---

# Limitaciones

* depende de servidores DNS externos
* no realiza enumeración de subdominios por sí solo
* requiere otras herramientas para ampliar resultados

Para enumeración de subdominios se recomienda utilizar:

* subfinder
* assetfinder
* amass

---

# Ejemplo práctico

Resolver subdominios descubiertos:

```bash
subfinder -d target.com -silent | dnsx
```

Detectar servicios web activos:

```bash
subfinder -d target.com -silent \
| dnsx \
| httpx
```

Escanear vulnerabilidades:

```bash
subfinder -d target.com -silent \
| dnsx \
| httpx \
| nuclei
```

---

# Herramientas relacionadas

Dentro de este repositorio:

* assetfinder
* subfinder
* naabu
* httpx
* nuclei

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
