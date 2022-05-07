Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "books", to: "books#index"
  get "books/new",to: "books#new",as:"books_new"
  post "books",to: "books#create"
  get "books/:id",to: "books#show", as:"books_show" 
  # Defines the root path route ("/")
  root "books#index"
end
