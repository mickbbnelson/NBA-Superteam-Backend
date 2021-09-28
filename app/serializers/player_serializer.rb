class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :position, :description, :team_id
  belongs_to :team
end
