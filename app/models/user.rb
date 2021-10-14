class User < ApplicationRecord

    has_many :favorites

    # un scope es una relación que tiene unos filtros
    #scope :favorite_artists
end
