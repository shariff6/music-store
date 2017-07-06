class CD
  @@cds = []
  attr_reader :name, :image, :year, :id
 define_method(:initialize) do |name, image, year|
    @name = name
    @image = image
    @year = year
    @id = @@cds.length.+(1)
  end
 define_singleton_method(:all) do
  @@cds
  end
 define_method(:save) do
   @@cds.push(self)
  end
 define_singleton_method(:clear) do
  @@cds = []
 end
 define_singleton_method(:find) do |identification|
   found_cd = nil
   @@cds.each do |cd|
     found_cd = cd if cd.id.eql?(identification.to_i)
    end
    found_cd
   end
 end
