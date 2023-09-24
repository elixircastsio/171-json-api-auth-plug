defmodule TeacherWeb.AlbumJSON do

  def index(assigns) do
    assigns[:albums]
  end

  def show(assigns) do
    assigns[:album]
  end

end
