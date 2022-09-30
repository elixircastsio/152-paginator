defmodule TeacherWeb.Api.AlbumView do
  use TeacherWeb, :view

  def render("index.json", %{albums: albums}) do
    %{data: render_many(albums, TeacherWeb.Api.AlbumView, "album.json")}
  end

  def render("album.json", %{album: album}) do
    %{id: album.id,
      artist: album.artist,
      title: album.title }
  end

  def render("show.json", %{album: album}) do
    %{id: album.id,
      artist: album.artist,
      title: album.title}
  end

end
