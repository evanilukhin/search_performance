defmodule SearchPerformance.Models.TwoStrings do
  use Ecto.Schema

  schema "two_strings" do
    field :first, :string
    field :second, :string

    timestamps()
  end
end
