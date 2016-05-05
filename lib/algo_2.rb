class SecondTwoMultiplesToLimit
    
  def run(multiple_one, multiple_two, limit)
    sum = 0

    (1...limit).each do |num|
      sum += num if num % multiple_one == 0 || num % multiple_two == 0
    end

    return sum
  end
end

