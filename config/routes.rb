Rails.application.routes.draw do
  root 'main#index'

  resources :main
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/data', to: 'consultas#get_data'
  get '/test', to: 'consultas#test'
  get '/buscador', to: 'consultas#buscador'
  post '/buscador', to: 'consultas#buscador_consulta'
end
