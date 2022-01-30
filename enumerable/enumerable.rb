class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end
  
  def each
    snacks.each do |snack|
      yield snack
  end
end
end

store1 = ConvenienceStore.new
store1.add_snack("Doritos")
p store1.snacks

p store1.select { |snack| snack.downcase.include?("J") }