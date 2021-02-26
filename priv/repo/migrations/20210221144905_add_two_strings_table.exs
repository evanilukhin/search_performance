defmodule SearchPerformance.Repo.Migrations.AddTwoStringsTable do
  use Ecto.Migration

  def change do
    create table("two_strings") do
      add :first,  :string, size: 150
      add :second, :string, size: 150

      timestamps()
    end

    execute "ALTER TABLE two_strings ADD COLUMN search_tsvector tsvector GENERATED ALWAYS AS (setweight(to_tsvector('english', coalesce(first, '')), 'A') || setweight(to_tsvector('english', coalesce(second,'')), 'B')) STORED;"

    create index(:two_strings, [:search_tsvector], using: :gin)
  end
end
