Rails.application.routes.draw do
  resources :comentarios
  resources :posts
  root :to => "posts#index" #linha adicionada
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


#add
Blog::Application.routes.draw do
   resources :posts do
      resources :comentarios
   end
   root :to => "posts#index"
end