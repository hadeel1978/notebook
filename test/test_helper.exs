{:ok, _} = Application.ensure_all_started(:wallaby)
Application.put_env(:wallaby, :base_url, Notebook.Endpoint.url)
ExUnit.start

Ecto.Adapters.SQL.Sandbox.mode(Notebook.Repo, :manual)
