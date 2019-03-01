module Mutations
  class SelectArticle < GraphQL::Schema::RelayClassicMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :article, Types::ArticleType, null: false

    # TODO: define arguments
    # argument :name, String, required: true
    argument :string, String, required: true

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    def resolve(string:)
      article=Article.where(title: string)
      {
        article: article
      }
    end
  end
end
