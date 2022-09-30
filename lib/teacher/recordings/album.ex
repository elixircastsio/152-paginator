defmodule Teacher.Recordings.Album do
  use Ecto.Schema
  import Ecto.Changeset

  schema "albums" do
    field :artist, :string
    field :summary, :string
    field :title, :string
    field :year, :integer

    timestamps()
  end

  @doc false
  def changeset(album, attrs) do
    album
    |> cast(attrs, [:title, :artist, :summary, :year])
    |> validate_required([:title, :artist, :summary, :year])
  end
end
