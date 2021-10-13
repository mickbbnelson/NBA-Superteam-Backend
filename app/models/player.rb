class Player < ApplicationRecord
  belongs_to :team

  def squad
    self.team
  end
end
