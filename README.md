<img src="Screenshot_KariPics20.jpg" alt="Screenshot de KariPics"> 

# Proyecto El Tuercas : Aplicacion web para administrar control de clientes y reparaciones de taller mecánico.


## Comenzando 🚀

Este proyecto utiliza las gemas:

devise
annotate
faker

Para descargar (clonar) este repositorio debes ejecutar en tu cónsola:

```hash
git clone https://github.com/apinango70/el_tuercas
```

## Sobre el proyecto:

El sistema permite la creación:

<img src="Screenshot_create_post_KariPics20.png" alt="Screenshot de KariPics"> 

edición:

<img src="Screenshot_editing_post_KariPics20.png" alt="Screenshot de KariPics"> 

y porder comentar los posts del blog.

<img src="Screenshot_Comments_KariPics20.png" alt="Screenshot de KariPics"> 

__NOTA__: Solo el usuario con el rol admin puede crear, editar o borrar los posts. Los visitantes podrán acceder al index y a los posts, para poder dejar algún comentario el visitante se debe registrar en el sistema.

## Pendiente por hacer:

- Que el admin pueda borrar algún comentario.

### Pre-requisitos 📋

Para ejecutar este proyecto, debes tener instalado ruby

```hash
https://rubyinstaller.org/
```

Instalar la gema Bundler

```hash
gem install bundler
```

Instalar la gema rails

```hash
gem install rails
```

Instalar postgresql

```hash
https://www.postgresql.org/
```

Instalar las gemas devise, annotate y faker

```hash
bundle add devise annotate faker
```

### Instalación 🔧

Para mostrar localmente este proyecto, debes garantizar que todas las dependencias de gemas estén configuradas correctamente, para eso debes ejecutar:

Se debe crear la base de datos y correr la migración ejecutando:

```hash
rails db:create
rails db:migrate
```

Para poblar la base de datos con datos de prueba de autos se debe ejecutar:

```hash
rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "autos.rb"))'
```









```hash
rails s
```

En el navegador debes ir a la página:

```hash
localhost:3000/
```

Para poder usar el blog, debes tener creado un user admin, para hacer esto se debe crear un usuario que tendrá por defecto rol "normal", para cambiar a admin se debe hacer por la consola de rails.

```hash
rails c
```

y ejecutar:

```hash
user = User.find_by(email: 'karina@mail.com')
user.update(role: 'admin')
user.save
```

__NOTA:__ se debe cambiar __user@mail.com__ por el correo que se utilizó para registrar al user que se desea cambiar a admin. 

Verificar si se realizó el cambio:

```hash
User.last
```

## Despliegue 📦

Para hacer un deploy en Heroku, debes seguir los siguientes pasos en la cónsola:

* Logearse en heroku

```hash
heroku login
```

* Crear la app en heroku

```hash
heroku create
```

* Subimos los cambios a heroku

```hash
git push heroku main
```

* Ejecutar git a  remote

```hash
git remote
```

* Ejecutar bundle para tener el proyecto actualizado hasta ese momento

```hash
bundle install
```

* Hacer un commit antes de subir la app a heroku

```hash
git add .
```

```hash
git commit -m "Mensaje del commit"
```

* Corremos las migraciones para el correcto funcionamiento

```hash
heroku run rake db:migrate
```

* Corremos el seed para tener datos

```hash
heroku run rake db:seed
```

## Construido con 🛠️

Para el desarrollo de este proyecto se utilizaron las sigientes heramientas

* [Ruby 3.2.2](https://www.ruby-lang.org/es/)
* [Rails 7.0.6](https://rubyonrails.org/)
* [Bootstrap 5.3](https://getbootstrap.com/docs/5.3/getting-started/download/)
* [Postgresql 14.8](https://www.postgresql.org/)
* [Frontend tomado de:](https://github.com/irimaya/067-minimalistic-blog)

## Contribuyendo 🖇️

Por favor siéntete libre de enviar pull requests y hacer forks.

## Autores ✒️

* **Alejandro Piñango** - Trabajo Inicial y Documentación - [apinango](https://github.com/apinango70)

## Licencia 📄

Este proyecto está bajo la Licencia (MIT) - mira el archivo [LICENSE.md](LICENSE.md) para detalles

---

Hecho con ❤️ por [apinango70](https://github.com/apinango70) 😊
