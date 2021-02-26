defmodule SearchPerformance.Repo do
  use Ecto.Repo,
    otp_app: :search_performance,
    adapter: Ecto.Adapters.Postgres
end
