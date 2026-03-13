# Naabu

## Descripción

**Naabu** es un escáner de puertos rápido desarrollado por **ProjectDiscovery** diseñado para descubrir puertos abiertos en hosts o dominios objetivo.

La herramienta está optimizada para realizar escaneo de puertos a gran escala y se integra fácilmente con otras herramientas del ecosistema ProjectDiscovery como **subfinder**, **httpx** y **nuclei**.

Naabu permite descubrir rápidamente servicios accesibles en una infraestructura, lo que lo convierte en una herramienta clave en la fase de **reconocimiento y enumeración en pentesting**.

Características principales:

* Escaneo de puertos rápido
* Soporte para múltiples hosts
* Integración con pipelines de reconocimiento
* Compatible con escaneo masivo
* Fácil automatización

---

## Tipo de herramienta

Network Scanning / Port Scanner / Reconnaissance

---

## Lenguaje

Go

---

## Repositorio oficial

https://github.com/projectdiscovery/naabu

---

# Instalación

## Instalación con Go

```bash
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
```

Agregar al PATH si es necesario:

```bash
export PATH=$PATH:~/go/bin
```

---

## Instalación manual

```bash
git clone https://github.com/projectdiscovery/naabu.git

cd naabu/v2/cmd/naabu

go build

./naabu -h
```

---

## Instalación con Docker

```bash
docker pull projectdiscovery/naabu
```

Ejemplo:

```bash
docker run projectdiscovery/naabu -host example.com
```

---

# Uso básico

Escanear puertos comunes de un host:

```bash
naabu -host example.com
```

Salida típica:

```
example.com:80
example.com:443
example.com:8080
```

---

# Opciones principales

### Escanear un host

```bash
naabu -host example.com
```

---

### Escanear múltiples hosts

```bash
naabu -list hosts.txt
```

---

### Escanear puertos específicos

```bash
naabu -host example.com -p 80,443,8080
```

---

### Escanear todos los puertos

```bash
naabu -host example.com -p -
```

---

### Guardar resultados

```bash
naabu -host example.com -o ports.txt
```

---

### Modo silencioso

```bash
naabu -host example.com -silent
```

---

### Escaneo rápido

```bash
naabu -host example.com -rate 1000
```

---

# Uso en pipelines de reconocimiento

Naabu se integra fácilmente con otras herramientas.

### Pipeline básico

```bash
subfinder -d example.com -silent | naabu -silent
```

---

### Descubrir servicios web activos

```bash
subfinder -d example.com -silent \
| naabu -silent \
| httpx
```

---

### Pipeline completo de reconocimiento

```bash
subfinder -d example.com -silent \
| naabu -silent \
| httpx -silent \
| nuclei
```

Este pipeline permite:

1. descubrir subdominios
2. identificar puertos abiertos
3. detectar servicios web activos
4. escanear vulnerabilidades

---

# Casos de uso

Naabu se utiliza en:

* pentesting
* bug bounty
* red teaming
* auditorías de seguridad
* mapeo de infraestructura
* descubrimiento de servicios

---

# Ventajas

* extremadamente rápido
* diseñado para escaneo masivo
* integración con herramientas modernas
* fácil automatización en pipelines
* bajo consumo de recursos

---

# Limitaciones

* no realiza fingerprinting avanzado de servicios
* no identifica versiones de software
* depende de otras herramientas para análisis profundo

Para análisis más detallado se recomienda usar:

* nmap
* httpx
* nuclei

---

# Ejemplo práctico

Escanear puertos de subdominios encontrados:

```bash
subfinder -d target.com -silent | naabu -silent
```

Descubrir servicios web:

```bash
subfinder -d target.com -silent \
| naabu -silent \
| httpx
```

Buscar vulnerabilidades:

```bash
subfinder -d target.com -silent \
| naabu -silent \
| httpx \
| nuclei
```

---

# Herramientas relacionadas

Dentro de este repositorio:

* subfinder
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
