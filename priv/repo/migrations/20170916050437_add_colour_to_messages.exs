defmodule Slackir.Repo.Migrations.AddColourToMessages do
  use Ecto.Migration

  def change do
    alter table(:messages) do
      add :colour, :string
    end
  end
end
