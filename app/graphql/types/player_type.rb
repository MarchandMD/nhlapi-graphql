class Types::PlayerType < Types::BaseObject
  field :id, ID, null: false
  field :fullName, String, null: false
  field :jerseyNumber, String, null: false
  field :position, String, null: false
  field :position_abbreviation, String, null: false
  field :link, String, null: false
end
