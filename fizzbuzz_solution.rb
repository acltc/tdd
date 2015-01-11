require 'rspec' #test

class Fizzbuzz
  def output(number)
    message = ""
    message += "FIZZ" if number % 3 == 0
    message += "BUZZ" if number % 5 == 0
    return message unless message.empty?
    return number
  end

  def go!
    (1..1000).each do |number|
      puts output(number)
    end
  end
end

Fizzbuzz.new.go!

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'the output for 1 to be 1' do
      expect(Fizzbuzz.new.output(1)).to eq(1)
    end

    it 'the output for 2 should be 2' do
      expect(Fizzbuzz.new.output(2)).to eq(2)
    end

    it 'the output for 3 should be FIZZ' do
      expect(Fizzbuzz.new.output(3)).to eq('FIZZ')
    end

    it 'the output for 4 should be 4' do
      expect(Fizzbuzz.new.output(4)).to eq(4)
    end

    it 'the output for 5 should be BUZZ' do
      expect(Fizzbuzz.new.output(5)).to eq('BUZZ')
    end

    it 'the output for 6 should be FIZZ' do
      expect(Fizzbuzz.new.output(6)).to eq('FIZZ')
    end

    it 'the output for 10 should be BUZZ' do
      expect(Fizzbuzz.new.output(10)).to eq('BUZZ')
    end

    it 'the output for 15 should be FIZZBUZZ' do
      expect(Fizzbuzz.new.output(15)).to eq('FIZZBUZZ')
    end

  end
end

