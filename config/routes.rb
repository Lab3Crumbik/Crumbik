Rails.application.routes.draw do


  resources :payments
  get 'welcome/index'

  resources :organizations

  #devise_for :users, class_name: 'FormUser', :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  devise_for :users, :controllers => { :registration => "registration", :omniauth_callbacks => "omniauth_callbacks" }


  devise_scope :user do
     get '/users/auth/:provider/upgrade' => 'omniauth_callbacks#upgrade', as: :user_omniauth_upgrade
     get '/users/auth/:provider/setup', :to => 'omniauth_callbacks#setup'
  end

   # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'paginas#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
      get 'paginas/formulario'
      get 'paginas/registroAdministradorOrg'
      get 'paginas/iniciarSesionAdmOrg'
      get 'paginas/registro_org'
      get 'paginas/consultar_org'
      get 'paginas/consultar_detalle_org'
      get 'paginas/modificar_org'
      get 'paginas/opc_administrador_sistema'
      get 'paginas/habilitar_organizacion_administrador'
      get 'paginas/consultar_detalle_adm'
      get 'paginas/registro_pago'
      get 'paginas/consultar_pagos'
      get 'paginas/modificar_datos_admS'
      get 'paginas/registro_ejecutivoS'
      get 'paginas/consultar_ejecutivos'
      get 'paginas/opc_administrador_org'
      get 'paginas/registro_empleados'
      get 'paginas/consultar_ejecutivos_org'
      get 'paginas/consultar_analistas_org'
      get 'paginas/registro_pago_org'
      get 'paginas/consultar_pagos_org'
      get 'paginas/modificar_rol_org'
      get 'paginas/modificar_datos_admOrg'
      get 'paginas/publicar_novedad'
      get 'paginas/cambiar_fondo'
      get 'paginas/opc_ejecutivo_org'
      get 'paginas/publicar_campanna'
      get 'paginas/consultar_campannas'
      get 'paginas/modificar_datos_ejecutivo_org'
      get 'paginas/registro_evento_ejecutivo_org'
      get 'paginas/consultar_novedades'
      get 'paginas/consultar_eventos_ejecutivo'
      get 'paginas/publicar_campanna_sistema'
      get 'paginas/consultar_campannas_sistema'
      get 'paginas/modificar_datos_ejecutivo_sistema'
      get 'paginas/opc_ejecutivo_sistema'
      get 'paginas/opc_analista_org'
      get 'paginas/modificar_datos_analista_org'
      get 'paginas/registro_reporte'
      get 'paginas/consultar_reportes'
      get 'paginas/iniciar_sesion_cliente'
      get 'paginas/registro_cliente'
      get 'paginas/registro_org_administrador_sistema'
      get 'paginas/registro_administradorOrg_admSist'
      get 'paginas/opc_cliente'
      get 'paginas/detalle_estadistica_interes'
      get 'paginas/consultar_detalle_estadistica_intereses'
      get 'paginas/modificar_datos_cliente'
      get 'paginas/cambiar_fondo_cliente'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
   get ':controller(/:action(/:id))(.:format)'
   post ':controller(/:action(/:id))(.:format)'
end
