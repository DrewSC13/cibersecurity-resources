# Bash Reverse Shells

## Descripción

Las **reverse shells en Bash** permiten que una máquina objetivo establezca una conexión hacia la máquina atacante, proporcionando acceso remoto a una shell del sistema comprometido.

Este tipo de técnica es común en:

* explotación de vulnerabilidades RCE
* command injection
* post-explotación en sistemas Linux
* CTF y laboratorios de seguridad

Bash es especialmente útil porque está presente en la mayoría de distribuciones Linux y sistemas Unix.

---

# Estructura

Esta carpeta contiene ejemplos de reverse shells implementadas en Bash.

```
bash/
├── bash-reverse-shell-tcp.md
├── bash-reverse-shell-file-descriptor.md
├── bash-reverse-shell-command-wrapper.md
└── bash-reverse-shell-fifo-nc.md
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

Ejemplo usando netcat:

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
