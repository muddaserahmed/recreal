Recreal::Application.routes.draw do
  resources :jobs

resources :job_applications

  resources :companies


  get "companys_controller/index"

  get "candidate_profile/index"

  resources :employers


  resources :candidates

  devise_for :users

  get "home/index"
  get "home/test"
  get "home/test_again"

  match "/candidate_profile/show/:id" => "candidate_profile#show", :as => 'show_profile'

match "/jobs/:id/portal" => "jobs#portal", :as => 'job_portal'

  mount RailsAdmin::Engine => '/rAdmin', :as => 'rails_admin'


##    Routing for LinkedIn
    resources :linkedin
  match '/linkedin_profile' => "linkedin#linkedin_profile"
  match '/oauth_account' => "linkedin#oauth_account"
  match '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'


##   Routing for quizez

  resources :exams, :only => [] do
    get  'show',    :on => :member
    get  'prepare', :on => :member
    post 'start',   :on => :member
    post 'finish',  :on => :member
  end
  match "/exams/:id/start/:question" => "exams#start", :constraints => { :id => /\d+/, :question => /\d+/ }, :method => :post
  match "/exams/:id/answer/:question" => "exams#answer", :method => :post

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
