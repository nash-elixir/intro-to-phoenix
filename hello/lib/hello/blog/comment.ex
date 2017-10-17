defmodule Hello.Blog.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias Hello.Blog.Comment


  schema "comments" do
    field :text, :string
    field :post_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Comment{} = comment, attrs) do
    comment
    |> cast(attrs, [:text])
    |> validate_required([:text])
  end
end
