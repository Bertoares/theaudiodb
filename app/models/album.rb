class Album < ApplicationRecord

        # hacemos las relaciones al modelo polimórfico
    has_many :favorites, as: :favoritable

end
