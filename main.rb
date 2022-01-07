class Solver
  def factorial(num)
    @range = (1..num)
    result = 1
    if num.negative?
      p 'Sorry your number maybe not a poaitive number '
    else
      @range.each { |number| result *= number }
      result
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      num
    end
  end
end
