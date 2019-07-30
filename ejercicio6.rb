class Product
  attr_accessor :name, :prices
  def initialize(name, *prices)
    @name = name
    @prices = prices.map(&:to_i)
  end
  def average(name)
    if @name == name
      puts name
      puts @prices.inject(&:+)/@prices.size.to_f
    end
  end
end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |prod|
  prod.average("Polera")
end
