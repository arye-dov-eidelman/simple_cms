Rails.application.routes.draw do

  root 'demo#index'

  get 'demo/index'

 
  match 'blog', to: "blog#index", via: :get
  match 'blog/new', to: "blog#new", via: :get
  match 'blog/create', to: "blog#create", via: :post
  match 'blog/edit/:id', to: "blog#edit", via: :get
  match 'blog/update/:id', to: "blog#update", via: :patch
  match 'blog/publish/:id', to: "blog#publish", via: :post
  match 'blog/unpublish/:id', to: "blog#unpublish", via: :post
  match 'blog/show/:id', to: "blog#show", via: :get
  match 'blog/delete/:id', to: "blog#delete", via: :delete


  # defoult route
  # get ':controller(/:action(/:id))'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
