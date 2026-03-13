# Socat Reverse Shells

## Descripción

Socat es una herramienta avanzada de red utilizada para transferir datos entre dos puntos utilizando múltiples tipos de conexiones.

A diferencia de netcat, socat permite crear conexiones mucho más complejas y estables, incluyendo:

* conexiones TCP
* conexiones SSL
* pseudo terminales (PTY)
* redirección avanzada de flujos

Por estas razones, socat es una herramienta muy utilizada en:

* pentesting
* red teaming
* post-explotación
* laboratorios de seguridad

---

# Estructura

Esta carpeta contiene diferentes variantes de reverse shells usando socat.

```text
socat/
├── socat-reverse-shell-basic.md
├── socat-reverse-shell-pty.md
├── socat-reverse-shell-bash.md
└── socat-reverse-shell-ssl.md
```

Cada archivo incluye:

* descripción
* requisitos
* listener
* comando
* explicación técnica
* limitaciones

---

# Listener básico

Antes de ejecutar una reverse shell, el atacante debe iniciar un listener.

Ejemplo:

```bash
socat TCP-LISTEN:4444,fork -
```

Explicación:

```
TCP-LISTEN → abre puerto TCP
4444       → puerto
fork       → permite múltiples conexiones
-          → salida estándar
```

---

# Flujo típico

1. iniciar listener

```
socat TCP-LISTEN:4444,fork -
```

2. ejecutar reverse shell en la máquina objetivo

3. recibir conexión

4. mejorar shell si es necesario

---

# Ventajas de socat

* conexiones más estables
* soporte PTY
* soporte SSL
* mayor flexibilidad que netcat

---

# Advertencia

Estas técnicas deben utilizarse únicamente en:

* laboratorios
* auditorías autorizadas
* entornos controlados

---

# Referencias

* https://pentestmonkey.net/cheat-sheet/shells/reverse-shell-cheat-sheet
* https://book.hacktricks.xyz
* https://github.com/swisskyrepo/PayloadsAllTheThings
