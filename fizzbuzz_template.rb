require 'rspec'

class Fizzbuzz
  def output(number)

  end

  def go!
    (1..1000).each do |number|
      puts output(number)
    end
  end
end

# Fizzbuzz.new.go!

RSpec.describe Fizzbuzz do
  describe '#output' do


  end
end

