class Types::TeamType < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
  field :link, String, null: false
end
