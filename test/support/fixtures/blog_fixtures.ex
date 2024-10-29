defmodule BlogSite.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `BlogSite.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        content: "some content",
        published_at: ~N[2024-10-28 22:20:00],
        slug: "some slug",
        title: "some title"
      })
      |> BlogSite.Blog.create_post()

    post
  end
end
