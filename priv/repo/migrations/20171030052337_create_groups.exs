defmodule SirAlex.Repo.Migrations.CreateGroups do
  use Ecto.Migration

  def change do
    create table(:groups) do
      add :name, :string, default: "", null: false
      add :description, :string, default: "", null: false
      add :is_private?, :boolean, default: false, null: false
      add :deleted_at, :naive_datetime, default: "epoch", null: false

      timestamps()
    end
  end
end
