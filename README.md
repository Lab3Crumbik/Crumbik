# CRM Crumbik

* Comandos de instalacion
* Comandos para creacion de base de datos
* Comandos para llenar la base de datos
* Instrucciones para el administrador de Organizacion

#### Comandos de instalacion

Para instalar las dependencias necesarias en nuestro sistema, ubicarnos en la consola
dentro de la carpeta del proyecto

  > bundle install

#### Comandos para creacion de base de datos

Es necesario crear la base de datos para nuestro sistema

  > rake db:create + rake db:migrate

#### Comandos para llena la base de datos

Para que nuestro sistema tenga las configuraciones iniciales necesarias

 > rake db:seed

Solo queda correr el servidor y *Bienvenido a Crumbik*

#### Instrucciones para el administradorde Organizacion

Para que el administrador de la organizacion registre a los empleados con sus respectivos roles
se tiene que dirigir a */admin/users*, desde alli vera la lista de usuarios y podra agregar uno nuevo
