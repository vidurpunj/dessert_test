question1.rb

puts "Enter a string"
str = gets.chomp
puts str.reverse

question3.rb

## print fibonacci
# input 0 and 1
#  fibonacci 20 digits

series = Array.new
series[0] = 0
series[1] = 1

def fibonacci(a, b, series)
  if series.length < 20
    series.push(a + b)
    fibonacci(b, a + b, series)
  end
  series
end

puts fibonacci(series[0], series[1], series)
