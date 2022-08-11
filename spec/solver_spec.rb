require_relative '../solver'

RSpec.describe Solver do
  it 'should be an instance of Solver' do
    solver = Solver.new

    expect(solver).to be_an_instance_of(Solver)
  end

  context 'When testing the method factorial' do
    it 'should throw an NoNegativesException when factorial of a negative number' do
      solver = Solver.new

      expect { solver.factorial(-1) }.to raise_error(NoNegativesException)
    end

    it 'should return 1 when the factorial of 0' do
      solver = Solver.new

      expect(solver.factorial(0)).to be 1
    end

    it 'should return 1 when the factorial of 1' do
      solver = Solver.new

      expect(solver.factorial(1)).to be 1
    end

    it 'should return 120 when the factorial of 5' do
      solver = Solver.new

      expect(solver.factorial(5)).to be 120
    end
  end

  context 'when we test the reverse method' do
    it 'should return the reverse string when the string is more than one character' do
      solver = Solver.new

      expect(solver.reverse('hello')).to eq 'olleh'
    end

    it 'should return the reverse string when the string is more than one number' do
      solver = Solver.new

      expect(solver.reverse(12_345)).to eq '54321'
    end
  end
end
