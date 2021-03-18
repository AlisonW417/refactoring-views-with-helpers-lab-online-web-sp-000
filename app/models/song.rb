class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if artist 
      artist.name
    end
  end

  def artist_name=(name)
    a = Artist.find_or_create_by(name: name)
    self.artist = a
  end
end
