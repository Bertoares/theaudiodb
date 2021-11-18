class Track < ApplicationRecord

    belongs_to :album
        # hacemos las relaciones al modelo polimórfico
    has_many :favorites, as: :favoritable
    
end
