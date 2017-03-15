Rails.application.routes.draw do
  devise_for :users
  root 'imadesho#index'
 get 'imadesho' => 'imadesho#index'
 get 'imadesho/top' => 'imadesho#top'
 get 'login' => 'login#index'
 get 'hanja' => 'hanja#new'
 get 'hanja/list' => 'hanja#list'
 post 'hanja' => 'hanja#create'
 delete 'hanja/:id' => 'hanja#destroy'
 get 'hanja/:id/edit' =>  'hanja#edit'
 patch 'hanja/:id' => 'hanja#update'

 get 'discussion' => 'discussion#list'
 get 'discussion/new' => 'discussion#new'
 post 'discussion' => 'discussion#create'
 delete 'discussion/:id' => 'discussion#destroy'
 get 'discussion/:id/edit' => 'discussion#edit'
 patch 'discussion/:id' => 'discussion#update'

 get 'users/:id' => 'users#show'
 
end
