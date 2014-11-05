require 'rspec'

class ChangeMachine

  def give_change(money)
    money_dispensed = []
    while money > 0
      if money >= 25
        next_coin = 25
      elsif money >= 10
        next_coin = 10
      elsif money >= 5
        next_coin = 5
      else
        next_coin = 1
      end
      money_dispensed << next_coin
      money -= next_coin
    end
    money_dispensed
  end
end

machine = ChangeMachine.new
puts "Insert your money and the machine will give you change"
money = gets.chomp.to_i
puts
puts "Here's your change:"
puts machine.give_change(money)

RSpec.describe ChangeMachine do
  describe 'give_change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.give_change(1)).to eq([1])
    end

    it 'should return [1, 1, 1, 1] when given 4' do
      machine = ChangeMachine.new
      expect(machine.give_change(4)).to eq([1, 1, 1, 1])
    end

    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.give_change(5)).to eq([5])
    end

    it 'should return [5, 1, 1, 1, 1] when given 9' do
      machine = ChangeMachine.new
      expect(machine.give_change(9)).to eq([5, 1, 1, 1, 1])
    end

    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.give_change(10)).to eq([10])
    end

    it 'should return [10, 5, 1] when given 16' do
      machine = ChangeMachine.new
      expect(machine.give_change(16)).to eq([10, 5, 1])
    end

    it 'should return [25] when given 25' do
      machine = ChangeMachine.new
      expect(machine.give_change(25)).to eq([25])
    end

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119' do
      machine = ChangeMachine.new
      expect(machine.give_change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end