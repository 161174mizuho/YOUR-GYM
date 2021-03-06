Rails.application.routes.draw do
  get 'public/::members'
devise_for :admin,skip: [:passwords], controllers: {
  sessions: "admin/sessions"
}  
  
devise_for :members, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
