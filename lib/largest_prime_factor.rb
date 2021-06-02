# Enter your procedural solution here!
def largest_prime_factor(n)
  max = -1

  while n % 2 == 0
    max = 2
    n /= 2
  end
  
  idx = 3
  while idx < (Math.sqrt(n) + 1)
    if n % idx === 0
      max = idx
      n /= idx
    else
      idx += 2
    end
  end
  max = n if n > 2
  return max
end

