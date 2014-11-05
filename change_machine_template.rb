require 'rspec'

class ChangeMachine

  def give_change(money)
    
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
  end
end