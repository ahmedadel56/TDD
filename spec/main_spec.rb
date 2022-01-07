require_relative '../main'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  it 'shows instance of solver class' do
    expect(@solver).to be_instance_of Solver
  end

  context '#factorial' do
    it 'checks if the factorial method exists' do
      expect(@solver).to respond_to :factorial
    end

    it 'gives factorial of given integer' do
      expect(@solver.factorial(5)).to match 120
    end

    it 'gives correct value for special case of 0' do
      expect(@solver.factorial(0)).to match 1
    end

    it 'gives exception for negative numbers' do
      expect(@solver.factorial(-5)).to match 'Sorry your number maybe not a poaitive number '
    end
  end

  context 'check reverse methode' do
    it 'checks if the reverse method exists' do
      expect(@solver).to respond_to :reverse
    end

    it 'gives reversed word for' do
      expect(@solver.reverse('hello')).to match 'olleh'
    end

    it 'gives reversed word for' do
      expect(@solver.reverse('ola')).to match 'alo'
    end
  end

  context 'check fizzbuzz methode' do
    it 'check if fizzbuzz method exists' do
      expect(@solver).to respond_to :fizzbuzz
    end

    it 'checks for divisibility by 3 only gives fizz' do
      expect(@solver.fizzbuzz(12)).to match 'fizz'
    end

    it 'checks for divisibility by 5 only gives buzz' do
      expect(@solver.fizzbuzz(5)).to match 'buzz'
    end

    it 'checks for divisibility by 5 and 3 gives fizzbuzz' do
      expect(@solver.fizzbuzz(15)).to match 'fizzbuzz'
    end
  end
end
