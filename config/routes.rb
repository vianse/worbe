Rails.application.routes.draw do

  get 'inicio/index'

  get 'publico/index'
  get 'home_empresa/index'
  get 'home/index'

  devise_for :admins
  devise_for :empresas 
  resources :tags
  resources :my_tags
  resources :applications
  resources :jobs
  resources :contacts
  resources :objetivos
  resources :cvs
  resources :idiomas
  resources :businesses
  resources :states
  resources :cities
  resources :countries
  resources :vacantes
  resources :experiences
  resources :certificates
  resources :languages
  resources :areas
  resources :courses
  resources :educations
  resources :dgs

devise_scope :user do
  get "registrar" , to: "devise/registrations#new", as: :registrar
  get "login" , to: "devise/sessions#new", as: :login
end

  get 'actions/index'
  get 'welcome/index'


  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

  ### Rutas para empresas ###
  get 'mis_vacantes' => 'jobs#index', as: :vacantes_empresa
  get 'Perfil' => 'businesses#new', as: :empresa
  get 'Perfil/:id' => 'businesses#show', as: :empresa_show
  get 'Perfil/:id/edit' => 'businesses#edit', as: :empresa_edit
  get 'nueva_vacante' => 'jobs#new', as: :nueva_vacante

  #navegacion usuario
  get  'hottags' => 'my_tags#index', as: :hottags
  post 'updated/:id' => 'jobs#actualiza', as: :updated
  post 'aplicar' => 'applications#aplicar', as: :aplicar
  post 'publicar' => 'actions#publicar', as: :publicar_cv
  post 'add_educations' => 'actions#crear_educations', as: :add_educations
  delete 'delete_education/:id' => 'actions#elimina_education', as: :delete_education
  get  'get_educations' => 'actions#get_education', as: :get_educations
  post 'add_experiences' => 'actions#crear_experiences', as: :add_experiences
  delete 'delete_experience/:id' => 'actions#elimina_experiences', as: :delete_experiences
  post 'add_courses' => 'actions#crear_courses', as: :add_courses
  delete 'delete_courses/:id' => 'actions#elimina_courses', as: :delete_courses
   post 'add_idiomas' => 'actions#crear_idiomas', as: :add_idiomas
  delete 'delete_idiomas/:id' => 'actions#elimina_idiomas', as: :delete_idiomas
   post 'add_certificates' => 'actions#crear_certificates', as: :add_certificates
  delete 'delete_certificates/:id' => 'actions#elimina_certificates', as: :delete_certificates
   post 'add_tags' => 'actions#crear_tags', as: :add_tags
  delete 'delete_tags/:id' => 'actions#elimina_tags', as: :delete_tags
  post 'add_favorito' => 'home_empresa#add_favoritos', as: :add_favoritos
  get  'get_tags' => 'actions#get_tags', as: :get_tag
  get  'get_certificates' => 'actions#get_certificaciones', as: :get_certificate
  get  'get_idiomas' => 'actions#get_idiomas', as: :get_idioma


   get 'vacantes_sugeridas' => 'welcome#index', as: :welcome
   
   get 'preview' => 'actions#preview', as: :preview
   get 'header/edit/:id' => 'cvs#edit', as: :head
   get 'header' => 'cvs#new', as: :header
   get 'dashboard' => 'actions#dashboard', as: :dashboard
   get 'worbe' => 'publico#index', as: :publicado
   get 'alta_empresa' => 'businesses#index', as: :empresas
  
   get 'paises' => 'countries#index', as: :paises
   get 'home' => 'home_empresa#index', as: :index_empresas
 
  
   get 'visitas' => 'actions#countview', as: :count_views
   get 'lasttag' => 'actions#lasttag', as: :last_tag
   get 'share' => 'actions#send_mail', as: :enviar_email
   get 'busqueda_cv' => 'home_empresa#busqueda_cv', as: :buscar_cv
   get 'busqueda_dg' => 'home_empresa#busqueda_dg', as: :buscar_dg
   get 'portafolio' => 'actions#portafolio', as: :portfolio

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
end
