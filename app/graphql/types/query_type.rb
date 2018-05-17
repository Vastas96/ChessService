Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :player, Type::PlayerType do
    argument :id, types.Int

    resolve ->(_obj, args, _ctx) {
      Player.find(args[:id])
    }
  end

  field :game, Type::GameType do
    argument :id, types.Int

    resolve ->(_obj, args, _ctx) {
      Game.find(args[:id])
    }
  end
end
