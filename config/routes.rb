Rails.application.routes.draw do
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses
      # resources :ingredients
    # end
  end
  resources :doses
  # resources :doses do
  #   resources :ingredients
  # end

  # resources :cocktails do
  #   resources :ingredients
  # end
end
