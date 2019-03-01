module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: true,
      description: "An example field added by the generator"
    def test_field
      "Hello world"
    end

    field :allArticles, [ArticleType], null: false
    def all_articles
      Article.all
    end

  end
end
