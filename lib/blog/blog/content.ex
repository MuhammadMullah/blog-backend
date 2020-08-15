defmodule Blog.Content do
  import Ecto.Query, warn: false

  alias Blog.Repo
  alias Blog.Blog.Post

  @doc """
    Return the list of all posts in the database

    ## Example

      iex> list_posts()
      [%Post{}, ...]
  """

  @spec list_posts() :: map()
  def list_posts() do
    Post
    |> Repo.all()
  end
end
