Rails.application.routes.draw do
  get '/master' => 'master#index'
  post '/master' => 'master#create'
  get '/master/approve' => 'master#approve'

  resources :finals
  resources :approveds
  get '/home' => 'home#index'
  post '/home' => 'home#create'
  get 'home/draftdb' => 'home#draftdb'
  get 'home/master' => 'home#master'
  post 'home/master' => 'home#addmaster'

  resources :drafts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
