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
  post 'add_experiences' => 'actions#crear_experiences', as: :add_experiences
  delete 'delete_education/:id' => 'actions#elimina_education', as: :delete_education


   get 'vacantes_sugeridas' => 'welcome#index', as: :welcome
   
   get 'preview' => 'actions#preview', as: :preview
   get 'header/edit/:id' => 'cvs#edit', as: :head
   get 'header' => 'cvs#new', as: :header
   get 'dashboard' => 'actions#dashboard', as: :dashboard
   get 'worbe' => 'publico#index', as: :publicado
   get 'alta_empresa' => 'businesses#index', as: :empresas
  
   get 'paises' => 'countries#index', as: :paises
   get 'home' => 'home_empresa#index', as: :index_empresas
 
   get  'search' => 'my_tags#index', as: :buscar

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
