# Python Reverse Shells

## Descripción

Las **reverse shells en Python** permiten que una máquina objetivo establezca una conexión hacia una máquina atacante utilizando el lenguaje Python.

Este tipo de técnica es común en:

* explotación de vulnerabilidades RCE
* command injection
* post-explotación en sistemas Linux
* CTF y laboratorios de seguridad

Python es una herramienta útil porque suele estar disponible en muchos sistemas Linux y permite construir conexiones de red fácilmente mediante sus librerías estándar.

---

# Estructura

Esta carpeta contiene diferentes variantes de reverse shells implementadas en Python.

```text
python/
├── python-reverse-shell-socket.md
├── python-reverse-shell-subprocess.md
├── python-reverse-shell-pty.md
└── python-reverse-shell-encoded.md
```

Cada archivo incluye:

* descripción
* requisitos
* listener
* comando
* explicación técnica
* limitaciones

---

# Listener básico

Antes de ejecutar una reverse shell, el atacante debe abrir un puerto de escucha.

Ejemplo con netcat:

```bash
nc -lvnp 4444
```

Opciones utilizadas:

```
-l   listen
-v   verbose
-n   no DNS resolution
-p   port
```

---

# Flujo típico de uso

1. iniciar listener en la máquina atacante

```bash
nc -lvnp 4444
```

2. ejecutar reverse shell en la máquina objetivo

3. recibir acceso remoto

4. mejorar la shell interactiva

Ejemplo de mejora de shell:

```bash
python3 -c 'import pty; pty.spawn("/bin/bash")'
```

---

# Advertencia

Los ejemplos de este directorio deben utilizarse únicamente en:

* laboratorios
* entornos controlados
* auditorías autorizadas

El uso no autorizado contra sistemas externos puede ser ilegal.

---

# Referencias

* https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet
* https://book.hacktricks.xyz
* https://github.com/swisskyrepo/PayloadsAllTheThings
