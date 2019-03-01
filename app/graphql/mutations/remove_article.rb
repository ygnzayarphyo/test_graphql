module Mutations
  class RemoveArticle < GraphQL::Schema::RelayClassicMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :article, Types::ArticleType, null: false

    # TODO: define arguments
    # argument :name, String, required: true
    argument :id, ID, required: true

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    def resolve(id:)
      article=Article.find(id).destroy!
      {
        article: article
      }
    end
  end
end
