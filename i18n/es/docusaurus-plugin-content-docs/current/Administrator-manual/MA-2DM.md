---
title: AM 2. Migración de datos
sidebar_position: 1
slug: /MA-2DM
---

# **MD: Migración de datos** {#238598a5fd40802d917ed1a14d5bff88}

_**Introduction**_  Migration is the process of moving a project (including all settings files) from **Paratext 7** to Paratext 9. Paratext 9 no dispone de función de migración. Sin embargo, todavía es posible hacerlo con Paratext 8. Nota: Paratext 9 puede leer proyectos de Paratext 8.

_**Where are we now?**_  You have already installed Paratext 8 and you have a Paratext 7 project that you want to use in Paratext 9.

_**Why is this important?**_  In order for all Paratext 9 features to work, your Paratext 7 project must be migrated. Paratext 7 y Paratext 9 utilizan servidores diferentes para enviar/recibir, por lo que no habrá forma de compartir un proyecto con usuarios de Paratext 7 y Paratext 8 (o 9) al mismo tiempo. En consecuencia, el antiguo servidor se cerrará a finales de diciembre de 2018. Por eso es importante migrar rápidamente los proyectos.

Los usuarios pueden tener Paratext 7 y Paratext 8 (y 9) instalados al mismo tiempo y utilizar cualquiera de los dos, pero no se pueden compartir proyectos entre ellos.

Una vez migrado el proyecto, todo el mundo debe recibir el proyecto migrado y trabajar sólo desde Paratext 8 (o 9).

Para migrar un proyecto, necesitas una buena conexión a Internet. Si sueles trabajar sin conexión a Internet, puedes continuar sin conexión una vez migrado el proyecto.

_**¿Qué vas a hacer?**_

Usted va a

- migrar un proyecto compartido:
- migrar un proyecto no compartido:

**2.2 Migrar un proyecto compartido desde Paratext 7**

Si estás administrando un proyecto existente en Paratext 7 y quieres migrarlo a Paratext 8 (o 9), aquí tienes cómo proceder.

**2.2.1 Preparar un proyecto Paratext 7 para la migración**

Todos los usuarios deben actualizar al mismo tiempo.

- Todos los usuarios deben enviar/recibir en **Paratext 7** (y luego dejar de trabajar en Paratext 7).
- El administrador confirma que el texto está en buen estado.
- El administrador lanza **Paratext 8.**
- **Archivo** &gt; **Abrir proyecto/recurso**
- Haga clic en la casilla de la parte inferior para visualizar los proyectos Paratext 7
- Seleccione el proyecto que desea migrar.

Probablemente estará marcado como 'v7, no registrado'

El proyecto puede estar marcado como "v7" sin estar descrito como no registrado, porque varios proyectos Paratext 7 fueron prerregistrados en Paratext 8. Si el tuyo es uno de estos, debes continuar con la migración, pero puedes saltarte el registro.

- Haga clic en **Aceptar** para iniciar la migración del proyecto.
    - _The Migrate Shared Project dialogue box appears._

paratext 8 puede decirle que el proyecto necesita ser registrado (si no está pre-registrado) y que necesita ser migrado a Paratext 8._

**2.2.2 Registrar un proyecto (antes de migrar el proyecto)**

- Haga clic en el botón **Registrarse en línea**
- Rellene el formulario web. (Los campos marcados con asterisco son obligatorios)
- Nombre corto: El nombre corto del proyecto no será editable después de este proceso.
- Nombre completo: Puede cambiar el nombre completo del proyecto.
- Paratext 8 requiere un identificador de idioma para su idioma. Utilice la función **Buscar** en el nombre de la lengua para encontrar el código Ethnologue de su lengua.
- **Ámbito** ¿El proyecto será una Biblia completa, una Biblia completa que incluya los libros deuterocanónicos, el Nuevo Testamento o algún otro grupo de libros?
- El **tipo de traducción** indica si el proyecto es la primera traducción para esta lengua, una revisión de una traducción existente, una nueva traducción o una traducción con notas de estudio, como una Biblia de estudio.
- **País**: Indique el país en el que se habla la lengua. Puede escribir algunas letras del nombre y, a continuación, seleccionar el país deseado. Puede especificar más de un país si la lengua se habla más allá de las fronteras.
- **Titular de los derechos**: El titular de los derechos sería la organización de la que espera obtener los derechos de autor para una edición impresa. También puede modificarse posteriormente.
- Los cuatro últimos campos le permiten añadir otra información si es relevante para describir su proyecto. (Ninguna de estas opciones es obligatoria)
- Puede indicar si su proyecto es confidencial o no. Sólo los usuarios registrados de Paratext 8 pueden ver los nombres de los proyectos estándar; un proyecto confidencial quedará oculto incluso para otros usuarios de Paratext 8.
- Otra opción es marcar un proyecto como proyecto de prueba o de formación. Puede utilizar esta opción para los proyectos de prueba que cree o para los proyectos que utilice para practicar en un curso de formación.
- Confirme que se compromete a seguir las directrices de la FOBAI en su proyecto de traducción y a guardar una copia de seguridad de su proyecto en la Biblioteca Bíblica Digital.

La "Biblioteca Bíblica Digital" (Digital Bible Library) es una herramienta para poner las traducciones a disposición de los usuarios de Internet o móviles, pero su proyecto no estará disponible para nadie hasta que usted acepte ponerlo a disposición.

- Haga clic en **Enviar inscripción**
    - _A message will appear saying ‘Project registered successfully.’_
- Volver al paratexto

Debería detectar que el proyecto ya está registrado y notificárselo.

**2.2.3 Migrar un proyecto registrado**

Si acaba de registrar su proyecto, éste ya está abierto y puede continuar con la migración. En caso contrario, abra el proyecto que desea migrar.

- El paso de migración tiene varias casillas que debe marcar para verificar que entiende de qué se trata.
- Soy el miembro del equipo que ha sido seleccionado para llevar a cabo este proceso para todo el equipo.
- Nuestro equipo entiende que el proyecto PT8 será la copia oficial del proyecto.
- Todos los miembros del equipo han dejado de editar la copia PT7 del proyecto.
- Todos los miembros del equipo han realizado un envío/recepción final de sus cambios en PT7.
- Este ordenador ha recibido los cambios en PT7.
- Marque estas casillas si son verdaderas y haga clic en **Migrar ahora** para continuar.

If you need to do anything else before you are ready to migrate, click **Migrate later**, then finish your preparations.

- Cuando hagas clic en **Migrar ahora**, Paratext copiará el proyecto de tu Paratext 7 a tu Paratext 8 y también realizará un envío/recepción a Internet.
- Si recibe un aviso sobre un envío/recepción final en **Paratext 7**,
- Pulse **Aceptar**,
    - _the migration process will stop,_
- marcan un hito en la historia del proyecto en Paratext 7,
- a continuación, reinicie la migración en Paratext 8.
- Ahora tus colegas pueden ir a Paratext 9 y hacer un envío/recepción para recibir el proyecto migrado.

Si no tienen conexión a Internet, puedes enviar/recibir a USB o a una carpeta de red, y pueden recibir el proyecto en Paratext 9 de esa manera.

**2.3 Ajustes adicionales del proyecto**

- **Identificador de idioma:** Después de hacer clic en **Migrar ahora**, Paratext 8 puede decirle que necesita especificar un identificador de idioma para su proyecto.

Puede comprobar el nombre del idioma y el identificador de idioma para su proyecto yendo a ≡ Pestaña, en Proyecto &gt; Configuración del proyecto &gt; Configuración de idioma. El identificador de la lengua aparece entre paréntesis después del nombre de la lengua o debajo del nombre.

- **Libros**: Los ajustes del proyecto y las propiedades del proyecto incluyen una pestaña Libros, donde se especifican los libros que se planea tener en el proyecto.

Puede elegir libros individuales de uno en uno, o especificar el Antiguo Testamento, el Nuevo Testamento o los libros deuterocanónicos utilizando los botones. Puede modificar esta lista de libros más adelante si cambian sus expectativas para el proyecto.

Nota. Después de migrar su proyecto, debe migrar también la retraducción y todos los proyectos de traducción hijos uno por uno.

**2.4 Migrar un proyecto no compartido**

Si un proyecto no se ha compartido en Paratext 7, no es necesario registrarlo antes de migrarlo, pero es muy recomendable.

- Iniciar Paratext 8
- **Archivo &gt; Abrir Proyecto/Recurso**
- Haga clic en **Mostrar proyectos Paratext 7**
- Seleccione el proyecto que desea migrar.
- Haga clic en **Migrar ahora** (migrar ahora)

Al hacer clic en **Migrar ahora**, el proyecto se migrará a la carpeta Paratext 8, listo para su uso. El estado de registro determinará qué funciones están disponibles para el proyecto.

Nota. No es necesario registrar los proyectos no compartidos, pero es recomendable.

:::tip

Recuerda que ya nadie debe editar el proyecto en Paratext 7. Sería un esfuerzo inútil, ya que nadie más verá nunca sus cambios. Para ayudar a los miembros de tu equipo a recordar esto, podrías borrar el proyecto de su Paratext 7 una vez que lo tengan en Paratext 8. También pueden desinstalar Paratext 7 de su ordenador si no lo necesitan para otros proyectos.

:::



