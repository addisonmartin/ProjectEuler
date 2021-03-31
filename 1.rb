# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_of_multiples_of_3_or_5(up_to)
  sum = 0

  (1...up_to).each do |i|

    if i % 3 == 0 or i % 5 == 0
      sum += i
    end

  end

  puts "Sum of Multiples of 3 or 5 (below #{up_to}): #{sum}"
end

sum_of_multiples_of_3_or_5(1000)