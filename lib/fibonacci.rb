class Fibonacci
  def seq(start = 0, max = 35)
    numbers = [fib(start)]
    numbers += [seq(start + 1, max)] if start < max
    numbers.flatten
  end

  def iterative_seq(start = 0, max = 10)
    array = [start, start+1]
    until array.length > max do
      array << (array[-1] + array[-2])
    end
    binding.pry
    array
  end

  private
  def fib(n)
    if n < 2
      return n
    else
      fib(n - 1) + fib(n - 2)
    end
  end



end