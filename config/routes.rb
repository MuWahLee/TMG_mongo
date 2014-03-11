TallyMyGear::Application.routes.draw do

  root 'site#index'

  get 'privacy' => 'site#privacy'
  get 'terms-of-use' => 'site#terms-of-use'

end
