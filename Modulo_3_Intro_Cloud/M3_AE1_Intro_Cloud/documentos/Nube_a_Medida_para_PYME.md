# ☁️ Actividad: Solución en la Nube a Medida para PYME

Este repositorio contiene la resolución de la actividad práctica de la clase **"Introducción a la computación en la nube"**. El objetivo es proponer una arquitectura Cloud que permita a una PYME (Pequeña y Mediana Empresa) modernizar su sistema de ventas y el acceso a sus datos.

---

## 🏢 1. El Escenario (Caso de Estudio)
Una PYME local opera con procesos manuales y servidores físicos antiguos. Necesitan:
1.  **Modernizar su sistema de ventas:** Pasar de registros locales a una aplicación accesible vía web/móvil.
2.  **Acceso a datos:** Que la información de inventario y ventas esté disponible en tiempo real para la toma de decisiones.
3.  **Crecimiento:** Una solución que escale si la empresa abre más sucursales.

---

## 🛠️ 2. Propuesta Técnica

### A. ¿Qué modelo de servicio aplicarías? (IaaS, PaaS, SaaS)
**Elección:** **PaaS (Platform as a Service - Plataforma como Servicio)**.

* **¿Por qué?**: Una PYME generalmente no tiene un equipo grande de TI para administrar sistemas operativos o parches de seguridad (como requeriría IaaS). Al usar PaaS, la empresa se enfoca solo en la **aplicación y los datos**, dejando que el proveedor de la nube se encargue de la infraestructura subyacente. Es el equilibrio perfecto entre control y simplicidad.


### B. ¿Qué servicios Cloud usarías?
Para cubrir las necesidades, propongo los siguientes servicios esenciales:

1.  **Cómputo (App Hosting):** Un servicio para ejecutar la aplicación de ventas (ej: AWS App Runner o Azure App Service). Permite que la web de ventas esté siempre disponible.
2.  **Base de Datos (Managed SQL):** Una base de datos relacional gestionada (ej: Amazon RDS). Aquí se guardarán ventas, clientes y stock de forma segura y con copias de seguridad automáticas.
3.  **Almacenamiento (Object Storage):** Para guardar imágenes de productos, facturas en PDF o reportes (ej: Amazon S3). Es barato y prácticamente infinito.
4.  **Seguridad (Identity Management):** Para que cada empleado tenga su propio usuario y contraseña con permisos específicos (ej: Azure AD o AWS IAM).

### C. ¿Qué proveedor elegirías? ¿Por qué?
**Elección:** **AWS (Amazon Web Services)** (Aunque Azure o GCP son excelentes opciones).

* **Justificación:** * **Capa Gratuita (Free Tier):** AWS ofrece muchos servicios gratis durante el primer año, ideal para que una PYME pruebe la solución sin costo inicial.
    * **Documentación:** Es el proveedor con la comunidad más grande, lo que facilita encontrar ayuda o tutoriales.
    * **Escalabilidad:** Si la PYME crece, AWS tiene servicios de nivel empresarial listos para activarse.

### D. ¿Qué modelo de costos sería más beneficioso?
**Elección:** **Pago por uso (Pay-as-you-go / OpEx)**.

* **¿Por qué?**: Tradicionalmente, las empresas gastaban mucho dinero comprando servidores (CapEx). En la nube, solo pagas por los minutos que la aplicación está encendida o los GB de datos guardados. Si un mes hay pocas ventas, el costo baja. Esto cuida el flujo de caja de la PYME.

---

## 🗺️ 3. Hoja de Ruta (Roadmap de Implementación)

Para que esta transición sea exitosa, seguiremos estos pasos simples:

1.  **Fase de Evaluación:** Identificar qué datos están en papel o Excel para limpiarlos y prepararlos para la migración.
2.  **Configuración de Entorno:** Crear la cuenta en el proveedor Cloud y configurar las reglas de seguridad básicas (firewalls y usuarios).
3.  **Migración de Datos:** Cargar el inventario actual en la nueva Base de Datos Cloud.
4.  **Despliegue de Aplicación:** Subir el código del sistema de ventas al servicio de cómputo PaaS.
5.  **Capacitación y Feedback:** Enseñar al personal a usar la nueva herramienta y ajustar según sus comentarios.

---

## 📖 4. Glosario de Aprendizaje (Notas Personales)

Como parte de mi proceso de aprendizaje, aquí resumo conceptos clave:

* **Escalabilidad:** Capacidad de la nube para manejar más trabajo (clientes) simplemente agregando recursos de forma automática.
* **Disponibilidad:** Garantía de que el sistema de ventas no se "caerá" y estará online 24/7.
* **OpEx (Operational Expenditure):** Gasto operativo mensual, a diferencia del CapEx (gasto de capital/inversión fuerte inicial).



# ☁️ Actividad: Solución en la Nube a Medida para PYME

Este repositorio contiene la resolución de la actividad práctica de la clase **"Introducción a la computación en la nube"**. El objetivo es proponer una arquitectura Cloud que permita a una PYME (Pequeña y Mediana Empresa) modernizar su sistema de ventas y el acceso a sus datos.

---

## 🏢 1. El Escenario (Caso de Estudio)
Una PYME local opera con procesos manuales y servidores físicos antiguos. Necesitan:
1.  **Modernizar su sistema de ventas:** Pasar de registros locales a una aplicación accesible vía web/móvil.
2.  **Acceso a datos:** Que la información de inventario y ventas esté disponible en tiempo real para la toma de decisiones.
3.  **Crecimiento:** Una solución que escale si la empresa abre más sucursales.

---

## 🛠️ 2. Propuesta Técnica

### A. ¿Qué modelo de servicio aplicarías? (IaaS, PaaS, SaaS)
**Elección:** **PaaS (Platform as a Service - Plataforma como Servicio)**.

* **¿Por qué?**: Una PYME generalmente no tiene un equipo grande de TI para administrar sistemas operativos o parches de seguridad (como requeriría IaaS). Al usar PaaS, la empresa se enfoca solo en la **aplicación y los datos**, dejando que el proveedor de la nube se encargue de la infraestructura subyacente. Es el equilibrio perfecto entre control y simplicidad.


### B. ¿Qué servicios Cloud usarías?
Para cubrir las necesidades, propongo los siguientes servicios esenciales:

1.  **Cómputo (App Hosting):** Un servicio para ejecutar la aplicación de ventas (ej: AWS App Runner o Azure App Service). Permite que la web de ventas esté siempre disponible.
2.  **Base de Datos (Managed SQL):** Una base de datos relacional gestionada (ej: Amazon RDS). Aquí se guardarán ventas, clientes y stock de forma segura y con copias de seguridad automáticas.
3.  **Almacenamiento (Object Storage):** Para guardar imágenes de productos, facturas en PDF o reportes (ej: Amazon S3). Es barato y prácticamente infinito.
4.  **Seguridad (Identity Management):** Para que cada empleado tenga su propio usuario y contraseña con permisos específicos (ej: Azure AD o AWS IAM).

### C. ¿Qué proveedor elegirías? ¿Por qué?
**Elección:** **AWS (Amazon Web Services)** (Aunque Azure o GCP son excelentes opciones).

* **Justificación:** * **Capa Gratuita (Free Tier):** AWS ofrece muchos servicios gratis durante el primer año, ideal para que una PYME pruebe la solución sin costo inicial.
    * **Documentación:** Es el proveedor con la comunidad más grande, lo que facilita encontrar ayuda o tutoriales.
    * **Escalabilidad:** Si la PYME crece, AWS tiene servicios de nivel empresarial listos para activarse.

### D. ¿Qué modelo de costos sería más beneficioso?
**Elección:** **Pago por uso (Pay-as-you-go / OpEx)**.

* **¿Por qué?**: Tradicionalmente, las empresas gastaban mucho dinero comprando servidores (CapEx). En la nube, solo pagas por los minutos que la aplicación está encendida o los GB de datos guardados. Si un mes hay pocas ventas, el costo baja. Esto cuida el flujo de caja de la PYME.

---

## 🗺️ 3. Hoja de Ruta (Roadmap de Implementación)

Para que esta transición sea exitosa, seguiremos estos pasos simples:

1.  **Fase de Evaluación:** Identificar qué datos están en papel o Excel para limpiarlos y prepararlos para la migración.
2.  **Configuración de Entorno:** Crear la cuenta en el proveedor Cloud y configurar las reglas de seguridad básicas (firewalls y usuarios).
3.  **Migración de Datos:** Cargar el inventario actual en la nueva Base de Datos Cloud.
4.  **Despliegue de Aplicación:** Subir el código del sistema de ventas al servicio de cómputo PaaS.
5.  **Capacitación y Feedback:** Enseñar al personal a usar la nueva herramienta y ajustar según sus comentarios.

---

## 📖 4. Glosario de Aprendizaje (Notas Personales)

Como parte de mi proceso de aprendizaje, aquí resumo conceptos clave:

* **Escalabilidad:** Capacidad de la nube para manejar más trabajo (clientes) simplemente agregando recursos de forma automática.
* **Disponibilidad:** Garantía de que el sistema de ventas no se "caerá" y estará online 24/7.
* **OpEx (Operational Expenditure):** Gasto operativo mensual, a diferencia del CapEx (gasto de capital/inversión fuerte inicial).

---
