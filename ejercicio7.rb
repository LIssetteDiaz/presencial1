class Product
  attr_accessor :name, :prices
  def initialize(name, *prices)
    @name = name
    @prices = prices
    @prices = prices.map(&:to_i)
  end
  def average()
    @prices.pop()
    File.open('nuevo_catalogo.txt', 'a') do |file|
      file.puts (@name + " " + @prices.join(', ') + "\n")
    end
  end
end
products_list = []
data = []
n = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list = Product.new(*ls)
  n << products_list.average()
end
