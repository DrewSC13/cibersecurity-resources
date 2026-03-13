# Assetfinder

## Descripción

**Assetfinder** es una herramienta de **reconocimiento pasivo** utilizada para descubrir subdominios asociados a un dominio objetivo utilizando múltiples fuentes OSINT.

La herramienta consulta diferentes servicios públicos y bases de datos para identificar activos expuestos en Internet relacionados con una organización.

Assetfinder es especialmente útil durante la fase inicial de **reconocimiento en pentesting y bug bounty**, ya que permite identificar rápidamente subdominios que podrían expandir la superficie de ataque.

Características principales:

* Enumeración pasiva de subdominios
* Consulta múltiples fuentes OSINT
* Muy rápido y ligero
* Fácil integración en pipelines
* Ideal para reconocimiento inicial

---

## Tipo de herramienta

Reconnaissance / OSINT / Subdomain Enumeration

---

## Lenguaje

Go

---

## Repositorio oficial

https://github.com/tomnomnom/assetfinder

---

# Instalación

## Instalación con Go

```bash
go install github.com/tomnomnom/assetfinder@latest
```

La herramienta se instalará en:

```text
~/go/bin/assetfinder
```

Agregar al PATH si es necesario:

```bash
export PATH=$PATH:~/go/bin
```

---

## Instalación manual

```bash
git clone https://github.com/tomnomnom/assetfinder.git

cd assetfinder

go build

./assetfinder -h
```

---

# Uso básico

Enumerar subdominios de un dominio:

```bash
assetfinder example.com
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

### Enumerar subdominios

```bash
assetfinder example.com
```

---

### Mostrar solo subdominios relacionados

```bash
assetfinder --subs-only example.com
```

---

### Guardar resultados en archivo

```bash
assetfinder example.com > subdomains.txt
```

---

# Fuentes OSINT utilizadas

Assetfinder consulta diferentes servicios públicos, entre ellos:

* CertSpotter
* CRT.sh
* HackerTarget
* ThreatCrowd
* Wayback Machine
* VirusTotal
* URLScan
* Facebook Certificate Transparency

Estas fuentes permiten descubrir subdominios sin interactuar directamente con el objetivo.

---

# Uso en pipelines de reconocimiento

Assetfinder suele combinarse con otras herramientas para ampliar la fase de reconocimiento.

### Enumerar subdominios y verificar servicios web

```bash
assetfinder --subs-only example.com | httpx
```

---

### Pipeline completo de reconocimiento

```bash
assetfinder --subs-only example.com \
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

Assetfinder se utiliza en:

* pentesting
* bug bounty
* red teaming
* OSINT
* reconocimiento de infraestructura
* mapeo de superficie de ataque

---

# Ventajas

* extremadamente rápido
* ligero y fácil de usar
* integración sencilla en pipelines
* no requiere configuración compleja

---

# Limitaciones

* depende de fuentes OSINT externas
* no realiza brute-force de subdominios
* resultados limitados en comparación con herramientas más avanzadas

Para ampliar la enumeración se recomienda usar herramientas como:

* subfinder
* amass
* dnsx

---

# Ejemplo práctico

Enumerar subdominios:

```bash
assetfinder --subs-only target.com
```

Filtrar hosts activos:

```bash
assetfinder --subs-only target.com | httpx
```

Escanear vulnerabilidades:

```bash
assetfinder --subs-only target.com \
| httpx \
| nuclei
```

---

# Herramientas relacionadas

Dentro de este repositorio:

* subfinder
* naabu
* nuclei
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

Tom Hudson (tomnomnom)

https://github.com/tomnomnom

---

# Licencia

MIT License
