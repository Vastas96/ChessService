CommentType = GraphQL::ObjectType.define do
  name 'Post'

  field :id, !types.Int
  field :body, types.String
end