# Luuna Test

Test en Ruby on Rails para Luuna

* Ruby 2.3.3
* Ruby on Rails 5.1.5

## Gemas

Para este ejercicio se utilizaron las gemas por default que instala Rails y adicionalmente se agrego:
- Devise para la Autenticación.
- CanCanCan para la Autorización

## Instrucciones
 1. Clonar Repositorio
 2. Cambiar la configuración de la base de desarrollo, colocando su usuario y contraseña de MySql. Esto se hace en el archivo **database.yml**
		username: tu_usuario
		password: tu_password
 3. Ejecutar los siguientes comandos para crear la base de datos de desarrollo:
		**rails db:create**
		**rails db:migrate**
		**rails db:seed**
 4. Ejecutar **rails s** para correr el servidor de Rails
> **Note:** En el archivo **seed.rb** se encuentran tres ejemplos de usuarios con sus diferentes roles, si así lo deseas puedes cambiar nombre, email y contraseñas. De lo contrario solo copia el email y la contraseña del usuario con el cual deseas ingresar.
