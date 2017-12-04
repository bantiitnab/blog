Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'welcome/index'
    get 'welcome/bye'

    root 'peoples#index'

    resources :peoples

    # showing new page
    # get 'people/new'
    # post 'peoples'


    get '/hello/:name', to: "peoples#hello"
    
end
