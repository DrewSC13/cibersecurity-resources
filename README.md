# 🛡️ Cibersecurity Tools

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![GitHub last commit](https://img.shields.io/github/last-commit/DrewSC13/cibersecurity-tools)](https://github.com/DrewSC13/cibersecurity-tools)
[![GitHub Repo Size](https://img.shields.io/github/repo-size/DrewSC13/cibersecurity-tools)](https://github.com/DrewSC13/cibersecurity-tools)
[![GitHub issues](https://img.shields.io/github/issues/DrewSC13/cibersecurity-tools)](https://github.com/DrewSC13/cibersecurity-tools/issues)

Repositorio profesional de herramientas, scripts y recursos de ciberseguridad, diseñado para **pruebas en entornos controlados y educativos**.

---

## 📌 Tabla de Contenidos

- [Sobre el Proyecto](#sobre-el-proyecto)  
- [Estructura del Repositorio](#estructura-del-repositorio)  
- [Contenido de Cada Carpeta](#contenido-de-cada-carpeta)  
- [Ejemplos de Uso](#ejemplos-de-uso)  
- [Advertencia Legal](#advertencia-legal)  
- [Próximos Pasos](#próximos-pasos)  
- [Contacto](#contacto)  

---

## 🔹 Sobre el Proyecto
Este repositorio centraliza herramientas de ciberseguridad y scripts propios que **no están incluidos en Kali Linux**, con un enfoque en:

- Auditoría de sistemas Linux/Windows  
- Escaneo y enumeración de redes  
- Explotación controlada y pruebas de laboratorio  
- Automatización de tareas de pentesting  

> ⚠️ Úsalo únicamente en entornos propios o con autorización expresa.

---

## 📂 Estructura del Repositorio

cibersecurity-tools/
│
├─ cibersecurity-tools/ # Herramientas de auditoría personalizadas
├─ cibersecurity-scripts/ # Scripts propios de escaneo y automatización
├─ cibersecurity-reverse_shell/ # Reverse shells seguras
├─ documentación/ # Guías, ejemplos y notas de uso

yaml
Copiar código

---

## 🛠 Contenido de Cada Carpeta

### 1. cibersecurity-tools/
- LinPEAS y otras herramientas personalizadas de auditoría.  
- RustScan y herramientas de escaneo rápido.  
- Scripts de enumeración avanzada.

### 2. cibersecurity-scripts/
- Escaneo de red TCP/UDP y sweeps de hosts.  
- Recolección de información OSINT y pruebas automatizadas.  
- Scripts de análisis de servicios y vulnerabilidades.

### 3. cibersecurity-reverse_shell/
- Reverse shells en Bash, Python, PHP y Netcat.  
- Ejemplos de payloads seguros para pruebas controladas.  

### 4. documentación/
- Guías paso a paso y mejores prácticas.  
- Ejemplos de comandos y resultados esperados.  
- Referencias y tips de auditoría profesional.

---

## ⚡ Ejemplos de Uso

```bash
# Ejecutar LinPEAS en un sistema Linux de pruebas
bash cibersecurity-tools/linpeas/linpeas.sh

# Escaneo rápido de puertos con RustScan
rustscan -a 192.168.1.10 --ulimit 5000

# Ejecutar un script de enumeración propia
python3 cibersecurity-scripts/scan_network.py

# Probar reverse shell en laboratorio controlado
bash cibersecurity-reverse_shell/bash_reverse.sh

⚖️ Advertencia Legal

El contenido de este repositorio solo debe usarse en entornos propios o con autorización explícita.
Cualquier uso en sistemas de terceros sin permiso es ilegal y puede tener consecuencias legales graves.

🚀 Próximos Pasos

Agregar más herramientas personalizadas en cibersecurity-tools/.

Expandir los scripts de automatización en cibersecurity-scripts/.

Completar reverse shells seguras en cibersecurity-reverse_shell/.

Documentar cada herramienta y script con guías detalladas en documentación/.

📬 Contacto

Creado y mantenido por Claudio Andres Sanjines Cuellar.
Repositorio: DrewSC13/cibersecurity-tools

Para dudas, sugerencias o colaboración, abre un issue.
