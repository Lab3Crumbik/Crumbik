# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Rol.create! [
  {name: "Administrador crumbik"},
  {name: "Ejecutivo"},
  {name: "Administrador"},
  {name: "Analista"},
  {name: "Cliente"}
]

Function.create! [
  {name: "Organizaciones", info: "Lista de organizaciones", url: "", father_id: "0", rol_id: 1},
  {name: "Pagos", info: "Facturas", url: "", father_id: "0", rol_id: 1},
  {name: "Campañas", info: "Campañas publicitarias" , url: "", father_id: "0", rol_id: 2},
  {name: "Productos", info: "Productos", url: "", father_id: "0", rol_id: 2},
  {name: "Clientes", info: "Detalle de los clientes", url: "", father_id: "0", rol_id: 2},
  {name: "Intereses", info: "Detalle de los intereses", url: "", father_id: "0", rol_id: 2},
  {name: "Intereses", info: "Mis intereses", url: "", father_id: "0", rol_id: 4},
  {name: "Empleados", info: "Detalle de empleados", url: "", father_id: "0", rol_id: 3},
  {name: "Roles", info: "Detalle de los roles", url: "", father_id: "0", rol_id: 3},
  {name: "Organizacion", info: "Perfil de la organizacion", url: "", father_id: "0", rol_id: 3},
  {name: "Lista", info: "", url: "http://lvh.me:3000/organizations", father_id: 1, rol_id: 1},
  {name: "Lista", info: "", url: "http://lvh.me:3000/payments", father_id: 2, rol_id: 1},
  {name: "Lista", info: "", url: "http://lvh.me:3000/advertising_campaigns", father_id: 3, rol_id: 2},
  {name: "Lista", info: "", url: "http://lvh.me:3000/products", father_id: 4, rol_id: 2},
  {name: "Lista", info: "", url: "http://lvh.me:3000/profiles", father_id: 5, rol_id: 2},
  {name: "Lista", info: "", url: "http://lvh.me:3000/", father_id: 6, rol_id: 2},
  {name: "Lista", info: "", url: "http://lvh.me:3000/", father_id: 7, rol_id: 4},
  {name: "Lista", info: "", url: "http://lvh.me:3000/", father_id: 8, rol_id: 3},
  {name: "Lista", info: "", url: "http://lvh.me:3000/rols", father_id: 9, rol_id: 3},
  {name: "Nuevo", info: "", url: "http://lvh.me:3000/organizations/new", father_id: 1, rol_id: 1},
  {name: "Nuevo", info: "", url: "http://lvh.me:3000/payments/new", father_id: 2, rol_id: 1},
  {name: "Nuevo", info: "", url: "http://lvh.me:3000/advertising_campaigns/new", father_id: 3, rol_id: 2},
  {name: "Nuevo", info: "", url: "http://lvh.me:3000/products/new", father_id: 4, rol_id: 2},
  {name: "Nuevo", info: "", url: "http://lvh.me:3000/profiles/new", father_id: 5, rol_id: 2},
  {name: "Nuevo", info: "", url: "http://lvh.me:3000/", father_id: 6, rol_id: 2},
  {name: "Nuevo", info: "", url: "http://lvh.me:3000/", father_id: 7, rol_id: 4},
  {name: "Nuevo", info: "", url: "http://lvh.me:3000/", father_id: 8, rol_id: 3},
  {name: "Nuevo", info: "", url: "http://lvh.me:3000/", father_id: 9, rol_id: 3},
  {name: "Mostrar", info: "", url: "http://lvh.me:3000/", father_id: 10, rol_id: 3},
]
