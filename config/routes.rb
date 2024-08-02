Rails.application.routes.draw do
  root "rick_and_morty#index"

  get "/rick_and_morty", to: "rick_and_morty#index"
end
