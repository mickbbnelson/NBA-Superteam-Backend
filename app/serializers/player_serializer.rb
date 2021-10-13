class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :position, :description, :squad, :team_id
  belongs_to :team
end
