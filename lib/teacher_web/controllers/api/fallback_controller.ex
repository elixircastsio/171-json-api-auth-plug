defmodule TeacherWeb.Api.FallbackController do
  use Phoenix.Controller

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(json: TeacherWeb.ErrorJSON)
    |> render(:"404")
  end

end
