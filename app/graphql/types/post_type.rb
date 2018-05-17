PostType = GraphQL::ObjectType.define do
  name 'Post'

  field :id, !types.Int
  field :title, !types.String
  field :body, types.String
end