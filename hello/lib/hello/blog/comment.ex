defmodule Hello.Blog.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hello.Blog.Comment
  alias Hello.Blog.Post


  schema "comments" do
    field :text, :string
    belongs_to :post, Post

    timestamps()
  end

  @doc false
  def changeset(%Comment{} = comment, attrs) do
    comment
    |> cast(attrs, [:text])
    |> validate_required([:text])
  end
end
