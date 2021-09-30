class TeamSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :roster
  has_many :players
end
