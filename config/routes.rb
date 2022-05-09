Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "books", to: "books#index"
  get "books/new",to: "books#new",as:"books_new"
  post "books",to: "books#create"
  get "books/:id/edit",to: "books#edit", as:"edit_books"
  get "books/:id",to: "books#show", as:"book"
  patch 'books/:id', to: 'books#update'
  delete 'books/:id', to: 'books#destroy',as:"destroy_books"
  # Defines the root path route ("/")
  root "books#index"
end
