require 'set'

def rand_n(n, max)
  randoms = Set.new
  loop do
    randoms << rand(max)
    return randoms.to_a if randoms.size >= n
  end
end

def run
  values = rand_n(100, 1000)
  values.each do |value|
    fizzbuzz value
  end
end

def fizzbuzz(value)
  if (value % 3 == 0 && value % 5 == 0)
    puts 'Fizzbuzz'
  elsif (value % 3 == 0 && value % 5 != 0)
    puts 'Fizz'
  elsif (value % 5 == 0 && value % 3 != 0)
    puts 'Buzz'
  else
    puts value 
  end
end
