PlayerType = GraphQL::ObjectType.define do
  name 'Player'

  field :id, !types.Int
  field :name, !types.String
  field :title, types.String
end