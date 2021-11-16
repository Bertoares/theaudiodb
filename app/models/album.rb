class Album < ApplicationRecord

    belongs_to :artist
        # hacemos las relaciones al modelo polimórfico
    has_many :favorites, as: :favoritable

end
