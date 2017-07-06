require('rspec')
require('artist')
require('music_store')
describe(Artist) do
  before do
    Artist.clear
  end
  describe('#name') do
    it('returns the name of the artist') do
      test_artist = Artist.new('james')
      expect(test_artist.name).to(eq('james'))
    end
  end
  describe('#id') do
    it('returns the id of the artist') do
      test_artist = Artist.new('james')
      expect(test_artist.id).to(eq(1))
    end
  end
end
