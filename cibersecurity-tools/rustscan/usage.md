# 📚 Ejemplos de uso de RustScan

Escaneo rápido de puertos:
```bash
rustscan -a 192.168.1.1

Escaneo con Nmap para enumerar servicios:

rustscan -a 192.168.1.1 -- -A -sC -sV


Escaneo de múltiples hosts:

rustscan -a 192.168.1.1-254


Escaneo con lista personalizada de puertos:

rustscan -a 192.168.1.1 -p 22,80,443


Ver versión instalada:

rustscan -V
