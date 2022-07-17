Rails.application.routes.draw do
  # get 'product/index'
  # get '/product/new' , to: "product#new"
  # get '/product/:id' , to: "product#show"
  # get '/product/:id' , to: "product#edit"
  # patch '/product/:id' , to: "product#update"
  # delete '/product/:id' , to: "product#destroy"
  # root "product#index"
  resources :product do
    resources :admins
  end
end

=begin 
   Controller#Action
                                    root GET    /                                                                                                 product#index
                           product_index GET    /product(.:format)                                                                                product#index
                                         POST   /product(.:format)                                                                                product#create
                             new_product GET    /product/new(.:format)                                                                            product#new
                            edit_product GET    /product/:id/edit(.:format)                                                                       product#edit
                                 product GET    /product/:id(.:format)                                                                            product#show
                                         PATCH  /product/:id(.:format)                                                                            product#update
                                         PUT    /product/:id(.:format)                                                                            product#update
                                         DELETE /product/:id(.:format) 
=end