TallyMyGear::Application.routes.draw do

  root    'site#index'

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
  get     'products/new'      =>  'products#product_new'
  post    'products'          =>  'products#product_create'

  get     'products'          =>  'products#product_index'
  get     'products/:id'      =>  'products#product_show',  as: :products_show

  get     'products/:id/edit' =>  'products#product_edit',  as: :products_edit
  patch   'products/:id'      =>  'products#product_update'

  delete  'products/:id'      =>  'products#product_delete', as: :products_delete

  # managing the user's gear
  get     'gear'  =>  'gear#edit',    as: :gear_form
  patch   'gear'  =>  'gear#update',  as: :update_gear

end
