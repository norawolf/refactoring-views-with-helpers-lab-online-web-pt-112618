class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if artist
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name) if !name.empty?
    self.artist = artist
  end
end
