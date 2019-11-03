Rails.application.routes.draw do
  # get 'unit_test/index'
  # get 'unit_test/new'
 root :to => 'unit_tests#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :unit_tests, except: [:index]


end
