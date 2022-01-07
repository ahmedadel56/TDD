class Solver
  def factorial(num)
    @range = (1..num)
    result = 1
    if num.negative?
      p 'Sorry your number maybe not a poitive number '
    else
      @range.each { |number| result *= number }
      result
    end
  end
end

cal = Solver.new

p cal.factorial(1)
