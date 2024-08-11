# config/routes.rb
Rails.application.routes.draw do
  root "rick_and_morty#index"

  get "/rick_and_morty/list", to: "rick_and_morty#list_characters", as: 'rick_and_morty_list'
  get "/rick_and_morty/about", to: "rick_and_morty#about", as: "about"
  get "/rick_and_morty", to: "rick_and_morty#index"
  get "/rick_and_morty/:id", to: "rick_and_morty#show", as: 'character'
end
