TallyMyGear::Application.routes.draw do


  root    'site#index'

  resources :products

  # general pages
  get     'privacy' => 'site#privacy'
  get     'terms'   => 'site#terms'


  # logging in and out
  get     'login'   => 'session#new'
  post    'login'   => 'session#create'
  delete  'logout'  => 'session#destroy'
  get     'logout'  => 'session#destroy' #TODO: remove before deployment

  # registering a new user
  get     'register'  =>  'register#new_user'
  post    'register'  =>  'register#register'

  # resetting the user's password
  get     'reset/:code' => 'password#edit', as: :reset
  put     'reset/:code' => 'password#update'
  patch   'reset/:code' => 'password#update'

  # managing the products
  # get     'products/new'      =>  'products#new'
  # post    'products'          =>  'products#create'

  # get     'products'          =>  'products#index'
  # get     'products/:id'      =>  'products#show',  as: :products_show

  # get     'products/:id/edit' =>  'products#edit',  as: :products_edit
  # patch   'products/:id'      =>  'products#update'

  # delete  'products/:id'      =>  'products#delete', as: :products_delete

  # managing the user's gear
  get     'gear'  =>  'gear#edit',    as: :gear_form
  patch   'gear'  =>  'gear#update',  as: :update_gear

end
