# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_product_palindrome(number_of_digits)


  # Get our two numbers to have the correct number of digits.
  x = 1
  y = 1

  while x.digits.length < number_of_digits
    x += 1
  end

  while y.digits.length < number_of_digits
    y += 1
  end

  # Loop over every possible product of the two numbers, of a given number of digits.
  products = []
  old_y = y # Keep track of the original value of y so it can be reset after each loop iteration.

  while true do

    while true do

      product = x * y
      # Only add the products to the array if it is a palindrome.
      products << product if is_palindrome?(product)

      y += 1
      if y.digits.length > number_of_digits
        y = old_y # Reset y's value to its original state.
        break
      end
    end

    x += 1
    break if x.digits.length > number_of_digits
  end

  puts "Largest Palindrome Product of #{number_of_digits} Digit Numbers is: #{products.max}"

end

def is_palindrome?(number)

  digits = number.digits

  start_i = 0
  end_i = digits.length - 1

  while (start_i <= end_i)
    return false if digits[start_i] != digits[end_i]

    start_i += 1
    end_i -= 1
  end

  return true
end

largest_product_palindrome(3)
