defmodule Hello.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hello.Blog.Comment
  alias Hello.Blog.Post


  schema "posts" do
    field :content, :string
    field :title, :string
    has_many :comments, Comment

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:title, :content])
    |> validate_required([:title, :content])
  end
end
