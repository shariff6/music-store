require('rspec')
require('music_store')

describe("CD") do
  before do
    CD.clear
  end

  describe("#name") do
    it "returns the name of the CD" do
      test_cd = CD.new("garrix", nil, 2000)
      expect(test_cd.name).to(eq("garrix"))
    end
  end
  describe("#image") do
    it "returns the image of the CD" do
      test_cd = CD.new("garrix", nil, 2000)
      expect(test_cd.image).to(eq(nil))
    end
  end
  describe("#year") do
    it "returns the year of the CD" do
      test_cd = CD.new("garrix", nil, 2000)
      expect(test_cd.year).to(eq(2000))
    end
  end
  describe(".all") do
    it "is empty at first" do
      expect(CD.all).to(eq([]))
    end
  end
  describe("#save") do
    it "saves the CD to the array" do
      test_cd = CD.new("garrix", nil, 2000)
      test_cd.save
      expect(CD.all).to(eq([test_cd]))
    end
  end
  describe(".clear") do
    it "clears the saved CDs" do
      CD.new("garrix", nil, 2000).save
      CD.clear
      expect(CD.all).to(eq([]))
    end
  end
end
