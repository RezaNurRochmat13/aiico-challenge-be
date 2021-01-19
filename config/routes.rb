Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'chats', to: 'chat#all_messages'
  post 'create', to: 'chat#create_messages'
end
