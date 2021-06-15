defmodule IdeaSnippets.Repo.Migrations.AddToPosts do
  use Ecto.Migration

  def change do
    create_query = "CREATE TYPE published_status AS ENUM('draft', 'public', 'limited', 'private')"
    drop_query = "DROP TYPE published_status"
    execute(create_query, drop_query)

    alter table(:posts) do
      add :published, :published_status
      add :user_id, :integer
    end
  end
end
