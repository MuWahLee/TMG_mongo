TallyMyGear::Application.routes.draw do

  root    'site#index'

  get     'login'   => 'session#new'
  post    'login'   => 'session#create'
  delete  'logout'  => 'session#destroy'
  get     'logout'  => 'session#destroy' #TODO: remove before deployment

  get     'register'  =>  'register#new_user'
  post    'register'  =>  'register#register'

  get     'privacy' => 'site#privacy'
  get     'terms'   => 'site#terms'

  get     'reset/:code' => 'password#edit', as: :reset
  put     'reset/:code' => 'password#update'
  patch   'reset/:code' => 'password#update'

  get     'product/new' =>  'product#product_new'
  post    'product'     =>  'product#product_create'

  get     'product'     =>  'product#product_index'
  get     'product/show'=>  'product#product_show'

  get     'product/edit'     =>  'product#product_edit'
  post    'product'     =>  'product#product_update'

  delete  'product'     =>  'product#product_delete'

  get     'gear'  =>  'gear#edit',    as: :gear_form
  patch   'gear'  =>  'gear#update',  as: :update_gear

end
