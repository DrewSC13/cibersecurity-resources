Perfecto, te voy a generar un **README.md profesional, completo y en español**, pensado para un repositorio local de RustScan (como el que tienes en `~/Escritorio/RustScan`), incluyendo:

* Introducción
* Características
* Instalación
* Uso básico y avanzado
* Integración con Nmap
* Estructura del proyecto (según tu tree exacto)
* Compilación
* Desarrollo / contribución
* Licencia

Este README está hecho para que quede **a nivel GitHub oficial**, pero adaptado a TU repositorio local.

---

# RustScan

RustScan es un escáner de puertos ultra rápido escrito en **Rust**, diseñado para identificar puertos abiertos en segundos y delegar el análisis profundo a **Nmap**.  
Su objetivo principal es acelerar la fase inicial de enumeración en pentesting, CTFs y auditorías de red, reduciendo drásticamente el tiempo de escaneo.

RustScan combina:

- Velocidad extrema (gracias a Rust)
- Paralelización inteligente
- Flexibilidad para integrarse con Nmap
- Personalización mediante `config.toml`
- Scripts y payloads optimizados

---

## 🚀 Características principales

- 🔥 **Escaneo de puertos en milisegundos**  
- ⚙️ **Integración automática con Nmap**  
  Tras detectar puertos abiertos, RustScan ejecuta un escaneo profundo usando Nmap.
- 🎯 **Detección precisa y configurable**
- 📦 **Fácil de compilar y extender**
- 💻 **Basado en async Rust (tokio)** para máximo rendimiento
- 🧩 **Configuración avanzada** mediante `config.toml`
- 🏁 **Soporte para automatización** con scripts personalizados

---

## 📦 Instalación

### 🔹 Compilar desde el código fuente (recomendado)

Asegúrate de tener Rust instalado:

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


Luego compila:

cd RustScan
cargo build --release

El binario se generará en:


target/release/rustscan

Puedes moverlo al PATH:

sudo mv target/release/rustscan /usr/local/bin/

---

## ⚙️ Uso básico

Escanear todos los puertos:

rustscan -a 192.168.1.1

Escanear un rango:

rustscan -a 192.168.1.1 -p 1-65535

Modo silencioso:

rustscan -a 192.168.1.1 --ulimit 5000 --no-nmap

---

## ⚙️ Configuración avanzada (`config.toml`)

Puedes modificar:

* Tiempo entre paquetes
* Payloads
* Número de hilos
* Modo de escaneo
* Rate limit
* Comportamiento de integración con Nmap

Editar archivo:

nano config.toml


Ejemplo de configuración personalizada:

[default]
timeout = 1500
scan_order = "serial"
batch_size = 1000

---

## 🧱 Estructura del proyecto

Este es el árbol de archivos principales (según tu instalación):
`
RustScan/
├── benches/              # Benchmarks de rendimiento
├── build.rs              # Configuración de build
├── Cargo.lock
├── Cargo.toml            # Metadatos del proyecto
├── CODE_OF_CONDUCT.md
├── config.toml           # Configuración principal
├── contributing.Dockerfile
├── contributing.md       # Guía de contribución
├── fixtures/             # Datos de pruebas
├── justfile              # Utilidades de desarrollo
├── LICENSE
├── Makefile              # Comandos útiles de desarrollo
├── nmap-payloads         # Payloads usados en integración con Nmap
├── pictures/             # Imágenes y recursos visuales
├── release.sh            # Script para lanzar releases
├── src/                  # Código fuente principal
├── tests/                # Pruebas automatizadas
└── README.md             # Este archivo


---

## 🔧 Desarrollo

Para compilar en modo debug:


cargo build

Para ejecutar RustScan desde el código:

cargo run -- -a 127.0.0.1

Para ejecutar pruebas:

cargo test

Para lanzar benchmarks:

cargo bench

---

## 📄 Licencia

RustScan está licenciado bajo **MIT**, disponible en `LICENSE`.

---

## 🤝 Créditos

Proyecto original:
[https://github.com/RustScan/RustScan](https://github.com/RustScan/RustScan)

Este repositorio contiene una copia local para fines educativos, de auditoría y experimentación.

Guarda el archivo con:

`Ctrl + O` → Enter → `Ctrl + X`

---
