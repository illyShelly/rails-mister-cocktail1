Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "cocktails", to: "cocktails#index"
  resources :cocktails do
    resources :doses, only: [:create, :new]
  end
  # doses can be deleted separately, when making mistake
  resources :doses, only: [:destroy]
end
