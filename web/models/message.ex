defmodule Slackir.Message do
  use Slackir.Web, :model

  schema "messages" do
    field :name, :string
    field :message, :string
    field :colour, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :message, :colour])
    |> validate_required([:name, :message])
  end
end
