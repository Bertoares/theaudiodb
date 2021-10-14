class Favorite < ApplicationRecord

            # Tiene una relación (favoritable) que es polimórfica
    belongs_to :favoritable, polymorphic: true


end
