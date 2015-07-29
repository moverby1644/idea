Rails.application.routes.draw do
  get '/index' => 'application#index'
  get '/idea/:id' => 'application#idea'
  get '/new_idea' => 'application#new'
  get '/create_idea' => 'application#create'
  get '/idea/:id/edit' => 'application#edit'
  get '/update_idea/:id' => 'application#update'
  get '/idea/:id/destroy' => 'application#destroy'
  get '/idea' => 'application#index'
end
