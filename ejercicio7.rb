class Product
  attr_accessor :name, :prices
  def initialize(name, *prices)
    @name = name
    @prices = prices
    @prices = prices.map(&:to_i)
  end
  def average(hash)
    hash
  end
end
products_list = []
data = []
n = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end
n = []


products_list.each |pr|
  pr[-1]
end
print products_list
