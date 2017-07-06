class Artist
  @@artists = []
  attr_reader :name, :image, :id, :cds
  def initialize(name, image)
    @name = name
    @image = image
    @id = @@artists.length.+(1)
    @cds = []
  end
  define_singleton_method(:all) do
    @@artists
  end
  define_method(:save) do
    @@artists.push(self)
  end
  define_singleton_method(:clear) do
    @@artists = []
  end
  define_method(:add_cd) do |cd|
    @cds.push(cd)
  end
  define_singleton_method(:find) do |id|
    found_artist = nil
    @@artists.each do |artist|
      found_artist = artist if artist.id.eql?(id)
    end
    found_artist
  end
end
