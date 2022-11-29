module Telephone
  TELEPHONE_NUMBER = '123-123-1234'

  def ring
    puts "Ring Ring!"
  end
end

class House
  attr_accessor :address

  include Telephone

  def initialize(address)
    @address = address
  end
end

freds_crib = House.new('123 Elm st')

puts freds_crib.ring

# Retrieving the telephone number using the scope resolution operator (::)
puts Telephone::TELEPHONE_NUMBER

