Rails.application.routes.draw do
  get 'dates/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dates', to: 'dates#index', as: 'dates'
end
