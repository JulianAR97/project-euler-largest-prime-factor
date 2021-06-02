# Enter your object-oriented solution here!
class LargestPrimeFactor
  attr_accessor :number

  def initialize(limit)
    @number = largest_prime_factor(limit)
  end
  
  def largest_prime_factor(limit)
    num = limit
    max = -1
    
    while num % 2 === 0
      num /= 2
    end

    idx = 3
    while idx < (Math.sqrt(num) + 1)
      if num % idx === 0
        max = idx
        num /= idx
      else
        idx += 2
      end
    end
    max = num if num > 2
    
    return max
  end


end