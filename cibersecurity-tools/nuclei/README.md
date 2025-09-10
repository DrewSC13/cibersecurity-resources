# Nuclei

Nuclei es un motor de escaneo de vulnerabilidades y pruebas de seguridad para aplicaciones web desarrollado por ProjectDiscovery. Permite realizar auditorías rápidas mediante plantillas (`templates`) para CVEs, configuraciones incorrectas, vulnerabilidades web, entre otros.

---

## Contenido del directorio

- `nuclei` : binario ejecutable para Linux.
- `README.md` : documentación de instalación y uso.

---

## Instalación

El binario ya está incluido en este repositorio. Solo asegúrate de que tenga permisos de ejecución:

```
chmod +x nuclei
Para usarlo globalmente en tu sistema:


sudo mv nuclei /usr/local/bin/
Uso básico
Ejecutar un escaneo simple:


./nuclei -t cves/ -target https://example.com
Actualizar plantillas de Nuclei:


./nuclei -update-templates
Ejemplo de escaneo completo con plantilla específica:


./nuclei -t vulnerabilities/cves/ -target https://example.com
Recomendaciones
Ejecuta Nuclei en entornos de pruebas controlados o con autorización.

Mantén las plantillas actualizadas para detectar las vulnerabilidades más recientes.

Para escaneos rápidos, utiliza la opción -severity para filtrar por criticidad.

Referencias
Repositorio oficial: https://github.com/projectdiscovery/nuclei

Documentación oficial: https://nuclei.projectdiscovery.io/

Nota de seguridad
Este binario se incluye únicamente con fines educativos y de auditoría de seguridad. No se permite su uso en entornos sin autorización.
