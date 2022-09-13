# Aplicación montada con Ruby on Rails

## Tabla de contenidos

- [Prerrequisitos](#prerrequisitos)
- [Instalar la app en tu PC](#instalar_la_app_en_tu_PC)
- [Trabajos e idea general del proyecto](#trabajos_e_idea_general_del_proyecto)
  1. [Trabajo 1](#trabajo-1)
  2. [Trabajo 2](#trabajo-2)
  3. [Trabajo 3](#trabajo-3)
  4. [Trabajo 4](#trabajo-4)

## Prerrequisitos

Para poder instalar la aplicación se tienen algunos "prerrequisitos". Estos son:

1. **Tener Linux:** Tener algún PC con Linux o, si tu PC es Windows, descargar [WSL2](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10) y seguir los pasos de instalación que puedes ver [aquí](https://docs.microsoft.com/en-us/windows/wsl/install) (_este instala una versión de Ubuntu_). Es posible usar Ruby on Rails desde Windows, pero la configuración es más larga y no se encuentra mucha documentación para apps de Rails (en cualquier versión) hechas desde Windows.
2. **Tener instalado Ruby:** Para esto recomiendo la instalación de Ruby con el administrador de versiones _rvenv_. Puedes seguir el tutorial de [GoRails](https://gorails.com/setup/ubuntu/20.04) (_selecciona la versión de ubuntu que instalaste en tu PC para el paso a paso y realiza solamente lo que está en el apartado Installing Ruby_).
3. **Tener instalado Git:** Para esto puedes seguir los pasos que se explican en el libro guía

## Instalar la app en tu PC

Primero necesitas descargar el repositorio en tu PC:

```
$ git clone
```

Ahora instala las gemas necesarias:

```
$ gem install bundler -v 2.3.14
$ bundle _2.3.14_ config set --local without 'production'
$ bundle _2.3.14_ install
```

A continuación, genera la base de datos:

```
$ rails db:migrate
```

Finalmente, corre las pruebas para verificar que todo se ejecuta correctamente:

```
$ rails test
```

Si ningún test falla, estás listo para correr tu app en tu servidor local:

```
$ rails server
```

Para más información mira el libro [_Ruby on Rails Tutorial_](https://www.railstutorial.org/book).

## Trabajos e idea general del proyecto

La idea es crear una página tipo blog para la Cátedra APUN 50-AÑOS, en la cual puedan haber usuarios que suban blogs e interactúen entre si, basándose en las conferencias presentadas durante la cátedra. Para esto, lo ideal sería agregar varias funcionalidades a la página, poco a poco y sin ningún orden en particular, a partir de estas ideas base:

- Creación de blogs.
- Creación de referencias.
- Creación de autoevaluación.
- Creación de usuarios.
- Opción de me gusta a blogs de otro usuario.
- Creación de comentario en blog propio o blog de otro usuario.
- Filtros de blogs respecto a varias características, como:
  - Fecha de publicación del blog.
  - Conferencia en la cual se basa el blog.

Si se logra completar poco a poco estas ideas bases es posible que se obtenga un producto de gran interacción al finalizar el semestre.

Por otro lado, las siguientes son ideas complementarias que se podrían agregar en la página, y es un apartado que se irá actualizando a medida de que se avance en el semestre:

- Subir imágenes en el blog.

### Trabajo 1

Se hizo un ensayo escrito.

### Trabajo 2

Se hizo un ensayo escrito.

### Trabajo 3

Se inicializó el proyecto con la funcionalidad principal

- Creación de blog referente a la última sesión vista, que cuenta con las siguientes propiedades:
  - Crear título.
  - Crear cuerpo del ensayo.
  - Indicar fecha de subida del ensayo.
  - Indicar fecha de actualización del ensayo, en caso de actualizarse.

La base de datos para la realización de este trabajo tendría la siguiente estructura:

![work_3_db](/app/assets/images/db3.png)

### Trabajo 4

Se agregó funcionalidad de creación de autoevaluación, específica para la Cátedra APUN.

La base de datos al momento de la realización de este trabajo queda de esta manera:

![work_4_db](/app/assets/images/db4.png)

### Trabajo 5

Se piensa crear usuarios para que cada uno suba blogs como propios y se pueda dejar un listado general de los blogs.
