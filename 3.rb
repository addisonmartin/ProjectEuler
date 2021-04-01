# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def largest_prime_factor_of(number)

  prime_factors = []
  new_number = number

  # You only ever need to check up to the number divided by 2 in order to find all factors.
  (2..(number/2).round).each do |i|
    if Prime.prime?(i)
      if (new_number % i).zero?
        new_number = new_number / i
        prime_factors << i

        break if new_number <= 1
      end
    end
  end

  puts "Largest prime factor of #{number} is #{prime_factors.max}"
  puts "All prime factors are: #{prime_factors}"
end

largest_prime_factor_of(600851475143)
