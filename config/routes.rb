Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
# à l'exterieur car bookmarks destroy ne doit pas être nesté
# c'est une route qui lui est propre

# ressources lists créer les 7 routes de lists, ressources sert a créer les 7 routes
# avec only new et create, on créer seulement les routes new et create
# lorsque qu'on fait un do ressources, on "neste" (ex: lists/bookmarks/new) en créant seulement un certains nb de routes
# voir rails routes sur le terminal pour voir les routes qui sont crées
