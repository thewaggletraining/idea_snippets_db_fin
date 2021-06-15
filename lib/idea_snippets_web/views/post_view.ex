defmodule IdeaSnippetsWeb.PostView do
  use IdeaSnippetsWeb, :view
  alias IdeaSnippets.Codes

  def get_number_of_comments(post_id) do
    post = Codes.get_comments(post_id)
    Enum.count(post.comments)
  end

end
