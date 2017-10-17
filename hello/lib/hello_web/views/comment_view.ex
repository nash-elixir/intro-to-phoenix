defmodule HelloWeb.CommentView do
  use HelloWeb, :view
  import HelloWeb.Router.Helpers
  alias HelloWeb.Endpoint

  def render("index.json", %{comments: comments}) do
    %{data: render_many(comments, __MODULE__, "comment.json")}
  end

  def render("show.json", %{comment: comment}) do
    %{data: [render_one(comment, __MODULE__, "comment.json")]}
  end

  def render("comment.json", %{comment: comment}) do
    %{
      "id" => comment.id,
      "text" => comment.text,
      "postId" => comment.post_id,
      "self" => comments_api_url(Endpoint, :show, comment.id)
    }
  end
end
