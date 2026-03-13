# Netcat Reverse Shells

## Descripción

Netcat es una herramienta de red extremadamente versátil conocida como el **"Swiss Army Knife" de las redes**. Permite leer y escribir datos a través de conexiones TCP y UDP.

En contextos de ciberseguridad ofensiva, netcat se utiliza frecuentemente para establecer **reverse shells**, permitiendo que una máquina comprometida abra una conexión hacia la máquina atacante.

Estas técnicas se utilizan comúnmente en:

* pentesting
* explotación de vulnerabilidades
* post-explotación
* CTF
* laboratorios de seguridad

---

# Estructura

Esta carpeta contiene diferentes variantes de reverse shells usando Netcat.

```text
nc/
├── nc-reverse-shell-traditional.md
├── nc-reverse-shell-busybox.md
├── nc-reverse-shell-mkfifo.md
└── nc-reverse-shell-e-option.md
```

Cada archivo contiene:

* descripción
* requisitos
* listener
* comando
* explicación técnica
* limitaciones

---

# Listener básico

Antes de ejecutar la reverse shell, el atacante debe iniciar un listener.

Ejemplo:

```bash
nc -lvnp 4444
```

Explicación:

```
-l  listen
-v  verbose
-n  no DNS resolution
-p  port
```

---

# Flujo típico de explotación

1. iniciar listener

```bash
nc -lvnp 4444
```

2. ejecutar reverse shell en la máquina objetivo

3. recibir conexión

4. mejorar shell si es necesario

Ejemplo:

```bash
python3 -c 'import pty; pty.spawn("/bin/bash")'
```

---

# Advertencia

Estas técnicas deben utilizarse únicamente en:

* laboratorios
* auditorías autorizadas
* entornos controlados

---

# Referencias

* https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet
* https://book.hacktricks.xyz
* https://github.com/swisskyrepo/PayloadsAllTheThings
