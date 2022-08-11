class NoNegativesException < StandardError
end

class Solver
  def factorial(number)
    raise NoNegativesException, 'No negative allowed' if number.negative?

    return 1 if number.zero?

    number * factorial(number - 1)
  end
end