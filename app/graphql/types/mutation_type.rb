module Types
  class MutationType < Types::BaseObject
    field :selectArticle, mutation: Mutations::SelectArticle
    field :removeArticle, mutation: Mutations::RemoveArticle
    field :createArticle, mutation: Mutations::CreateArticle
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

  end
end
