# Cybersecurity Tools

## Descripción

Esta sección del repositorio contiene una **colección de herramientas utilizadas en ciberseguridad ofensiva y reconocimiento de infraestructura**.

Las herramientas incluidas están orientadas principalmente a:

* reconocimiento (reconnaissance)
* enumeración de activos
* análisis de servicios
* escaneo de vulnerabilidades
* post-explotación

El objetivo de este módulo es proporcionar una **referencia organizada de herramientas ampliamente utilizadas en pentesting, bug bounty y auditorías de seguridad**.

---

# Estructura del módulo

Las herramientas están organizadas como **directorios independientes**, cada uno con su documentación y código fuente correspondiente.

```text
cibersecurity-tools/
├── assetfinder
├── dnsx
├── httpx
├── linpeas
├── naabu
├── nuclei
├── rustscan
├── subfinder
├── theHarvester
└── winpeas
```

Cada herramienta contiene:

* código fuente
* licencia original
* documentación adaptada para este repositorio
* ejemplos de uso

---

# Categorías de herramientas

## Reconocimiento y OSINT

Herramientas utilizadas para descubrir activos expuestos en Internet.

Incluyen:

* **assetfinder** → descubrimiento de subdominios
* **subfinder** → enumeración pasiva de subdominios
* **theHarvester** → OSINT y recolección de información

Estas herramientas permiten identificar:

* subdominios
* hosts públicos
* infraestructura expuesta

---

## Resolución DNS

Herramientas utilizadas para validar subdominios y consultar registros DNS.

Incluyen:

* **dnsx**

Permiten:

* resolver registros DNS
* validar subdominios activos
* filtrar resultados falsos

---

## Escaneo de puertos

Herramientas utilizadas para descubrir servicios accesibles.

Incluyen:

* **naabu**
* **rustscan**

Permiten:

* identificar puertos abiertos
* descubrir servicios expuestos
* realizar escaneos rápidos de infraestructura

---

## Detección de servicios web

Herramientas utilizadas para detectar hosts que ejecutan servicios HTTP o HTTPS.

Incluyen:

* **httpx**

Permiten:

* detectar servicios web activos
* identificar tecnologías
* analizar respuestas HTTP

---

## Escaneo de vulnerabilidades

Herramientas utilizadas para detectar vulnerabilidades conocidas.

Incluyen:

* **nuclei**

Permiten:

* escaneo automatizado de vulnerabilidades
* detección de configuraciones inseguras
* identificación de exposiciones conocidas

---

## Post-explotación

Herramientas utilizadas para enumeración local y escalamiento de privilegios.

Incluyen:

* **linpeas** → enumeración de privilegios en Linux
* **winpeas** → enumeración de privilegios en Windows

---

# Pipeline de reconnaissance

Las herramientas incluidas permiten construir un **pipeline moderno de reconocimiento** utilizado en pentesting y bug bounty.

Ejemplo de flujo completo:

```bash
subfinder -d example.com -silent \
| dnsx \
| naabu \
| httpx \
| nuclei
```

Este pipeline permite:

1. descubrir subdominios
2. validar registros DNS
3. identificar puertos abiertos
4. detectar servicios web activos
5. escanear vulnerabilidades

También puede ampliarse utilizando herramientas como:

* assetfinder
* rustscan
* theHarvester

---

# Casos de uso

Las herramientas de este módulo pueden utilizarse en:

* pentesting
* bug bounty
* auditorías de seguridad
* red teaming
* investigación en ciberseguridad

---

# Ventajas de este enfoque

Organizar las herramientas dentro de un mismo repositorio permite:

* mantener documentación centralizada
* facilitar la consulta de ejemplos
* construir pipelines de seguridad
* aprender el uso práctico de cada herramienta

---

# Advertencia

Las herramientas incluidas en este repositorio deben utilizarse únicamente en:

* laboratorios
* entornos controlados
* auditorías autorizadas

El uso no autorizado contra sistemas externos puede ser ilegal.

---

# Licencias

Cada herramienta mantiene **su licencia original**, incluida dentro de su respectivo directorio.

Las licencias más comunes en estas herramientas incluyen:

* MIT License
* Apache 2.0
* GPL

---

# Autor del repositorio

Repositorio mantenido dentro del proyecto:

**cibersecurity-resources**

https://github.com/DrewSC13/cibersecurity-resources
