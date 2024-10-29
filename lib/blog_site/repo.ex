defmodule BlogSite.Repo do
  use Ecto.Repo,
    otp_app: :blog_site,
    adapter: Ecto.Adapters.Postgres
end
