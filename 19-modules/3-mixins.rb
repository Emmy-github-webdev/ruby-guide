module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable
end

class Suppermarket
  include Purchaseable
end

# A class inheritin from another class
#CornerMart inherit from suppermarket
class CornerMart < Suppermarket
  
end

book1 = Bookstore.new
p book1.purchase("Physics")
store1 = Suppermarket.new
p store1.purchase("Shoperite")
mart1 = CornerMart.new
p mart1.purchase("Slim Jim")