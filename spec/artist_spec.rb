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
  describe('#cds') do
    it('checks if empty array of cds is initially returned') do
      test_artist = Artist.new('james')
      expect(test_artist.cds).to(eq([]))
    end
  end
  describe('#save') do
    it('adds an artist to the array of saved artists') do
      test_artist = Artist.new('james')
      test_artist.save
      expect(Artist.all).to(eq([test_artist]))
    end
  end
  describe('.all') do
    it('is empty at first') do
      expect(Artist.all).to(eq([]))
    end
  end
  describe('.clear') do
    it('empties out all of the saved artists') do
      Artist.new('james').save
      Artist.clear
      expect(Artist.all).to(eq([]))
    end
  end
  describe('.find') do
    it('returns an artist by their id number') do
      test_artist = Artist.new('james')
      test_artist.save
      test_artist2 = Artist.new('james')
      test_artist2.save
      expect(Artist.find(test_artist.id)).to(eq(test_artist))
    end
  end
  describe('#add_cd') do
    it('adds a new cd to an artist') do
      test_artist = Artist.new('james')
      test_cd = CD.new('garrix', nil, 2000)
      test_artist.add_cd(test_cd)
      expect(test_artist.cds).to(eq([test_cd]))
    end
  end
end
