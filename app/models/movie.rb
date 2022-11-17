class Movie < ApplicationRecord
  has_many :bookmarks
  # Un film a un titre (par ex. : "Wonder Woman 1984"), un aperçu ("Wonder Woman entre en conflit avec l'Union soviétique pendant la Guerre Froide dans les années 1980 !"), une URL d’affiche et une note (6.9).
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
