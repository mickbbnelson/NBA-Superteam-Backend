class Team < ApplicationRecord
    has_many :players, dependent: :destroy

    def roster
        self.players
    end
end
