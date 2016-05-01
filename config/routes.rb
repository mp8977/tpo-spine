Rails.application.routes.draw do


  get 'static/home'
  get 'static/admin_dashboard'
  get 'static/user_dashboard'
  get 'static/nurse_dashboard'
  get 'static/doctor_dashboard'
  get 'static/confirmation'

  get 'admins/sifranti'

  # --> Must be ABOVE 'resources' !!!
  devise_for :users,
             controllers: { sessions: "users/sessions", registrations: "users/registrations",
                            confirmations: "users/confirmations", passwords: "users/passwords", unlocks: "users/unlocks"}
  devise_for :admins,
             controllers: { sessions: "admins/sessions", registrations: "admins/registrations",
                            confirmations: "admins/confirmations", passwords: "admins/passwords", unlocks: "admins/unlocks"}
  devise_for :doctors,
             controllers: { sessions: "doctors/sessions", registrations: "doctors/registrations",
                            confirmations: "doctors/confirmations", passwords: "doctors/passwords", unlocks: "doctors/unlocks"}
  devise_for :nurses,
             controllers: { sessions: "nurses/sessions", registrations: "nurses/registrations",
                            confirmations: "nurses/confirmations", passwords: "nurses/passwords", unlocks: "nurses/unlocks"}

  # -->Must be BELOW 'devise_for' and devise related !!!

  resources :doctors
  mount Dashing::Engine, at: Dashing.config.engine_path

  resources :appointments
  resources :illnesses
  resources :doctor_has_nurses
  resources :contact_people
  resources :doctor_has_patients
  resources :patients
  resources :patients
  resources :users
  resources :users
  resources :patients
  resources :posts
  resources :part_measurements
  resources :nurses
  resources :medicine_instructions
  resources :medicine_checks
  resources :medicines
  resources :measurement_homes
  resources :measurement_docs
  resources :measurements
  resources :illness_checks
  resources :hospitals
  resources :doctors
  resources :diet_instructions
  resources :diet_checks
  resources :diets
  resources :diagnose_has_medicines
  resources :diagnoses
  resources :check_ups
  resources :check_ups
  resources :addresses
  #resources :admins



  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static#home'

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
