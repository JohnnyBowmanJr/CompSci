class Factorial

  def self.factorial(n)
    n *= if n > 1
      factorial(n-1)
    else
      1
    end 
  end
end