Rails.application.routes.draw do

  get 'contactform/index'
  get 'contactform/show'
  get 'contactform/edit'
  get 'contactform/new'
  get "/home", to: "pages#home", as: "root"
  get "/about", to: "pages#about", as: "about"
  get "/portfolio", to: "pages#portfolio", as: "portfolio"
  get "/blog", to: "pages#blog", as: "blog"
  get "/contact", to: "contactform#index", as: "contact"

  get '/contactforms', to: 'contactform#index'
  post '/contactforms', to: 'contactform#create'

  get '/contactforms/thanks', to: 'contactform#thank_you_page'

  # contactform/index
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
