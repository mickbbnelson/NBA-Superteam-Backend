class Team < ApplicationRecord
    has_many :players

    def roster
        self.players
    end
end
