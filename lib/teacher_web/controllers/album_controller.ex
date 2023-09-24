defmodule TeacherWeb.AlbumController do
  use TeacherWeb, :controller

  alias Teacher.Recordings

  def show(conn, %{"id" => id}) do
    album = Teacher.Recordings.get_album!(id)
    render(conn, :show, album: album)
  end

  def index(conn, _params) do
    albums = Teacher.Recordings.list_albums()
    render(conn, :index, albums: albums)
  end

end
