# theHarvester

`theHarvester` es una herramienta de **OSINT (Open Source Intelligence)** para la fase de **reconocimiento pasivo**, que permite recopilar información pública sobre un objetivo, principalmente:

- Correos electrónicos
- Subdominios
- Nombres de hosts
- Banners

Es muy útil en fases iniciales de **pentesting, red team y CTFs**, cuando todavía no queremos interactuar agresivamente con el objetivo.

---

## 📦 Instalación

### 🔹 En Kali Linux / Debian (repositorios oficiales)

```bash
sudo apt update
sudo apt install -y theharvester

⚙️ Uso básico

Sintaxis general:

theHarvester -d <dominio> -b <fuente> [opciones]


Parámetros principales:

-d → Dominio objetivo (ej: example.com)

-b → Fuente o motor (ej: google, bing, duckduckgo, crtsh, all, etc.)

-l → Límite de resultados a obtener (depende de la fuente)

-f → Exportar resultados a archivo (HTML o XML, según versión)

-h → Mostrar ayuda

📎 Referencias

Repositorio oficial de theHarvester en GitHub.

Documentación de Kali Linux sobre theHarvester.

---

