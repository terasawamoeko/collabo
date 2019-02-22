Rails.application.routes.draw do
  get 'articles/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/top' => 'homes#top'
post '/articles' => 'articles#create'
get '/articles' => 'articles#index'
get '/articles/:id' => 'articles#show', as: 'article'
root :to => 'homes#top'
get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
patch '/articles/:id' => 'articles#update', as: 'update_article'
delete '/articles/:id' => 'articles#destroy', as: 'destroy_article'
end