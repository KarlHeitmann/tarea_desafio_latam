Rails.application.routes.draw do
  get 'nasa_photos/index'

  root to: 'nasa_photos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
