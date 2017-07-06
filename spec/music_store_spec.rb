require('rspec')
require('music_store')

describe("CD") do
  before do
    CD.clear
  end

  describe("name") do
    it "returns the name of the CD" do
      test_cd = CD.new("garrix", nil, 2000)
      expect(test_cd.name).to(eq("garrix"))

    end
  end
end
