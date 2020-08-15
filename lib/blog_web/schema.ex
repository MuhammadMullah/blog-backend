defmodule BlogWeb.Schema do
  use Absinthe.Schema

  import_types BlogWeb.Schema.ContentTypes

  alias BlogWeb.Resolvers

  query do
    @desc "Fetch all the posts"
    field :posts, list_of(:post) do
      resolve &Resolvers.Content.list_posts/3
    end
  end
end
