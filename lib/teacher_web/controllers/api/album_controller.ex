defmodule TeacherWeb.Api.AlbumController do
  use TeacherWeb, :controller

  alias Teacher.Recordings

  action_fallback TeacherWeb.Api.FallbackController

  def show(conn, %{"id" => id}) do
    with {:ok, album} <- get_album(id) do
      render(conn, :show, album: album)
    end
  end

  def index(conn, _params) do
    albums = Teacher.Recordings.list_albums()
    render(conn, :index, albums: albums)
  end

  defp get_album(id) do
    case Recordings.get_album(id) do
      nil ->
        {:error, :not_found}

      album ->
        {:ok, album}

    end
  end

end
