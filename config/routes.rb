Rails.application.routes.draw do
  match('doctors', {:via => :get, :to => 'doctors#index'})
  match('doctors/:id', {:via => :get, :to => 'doctors#show'})
end
