katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    katz_deli.each_with_index do | customer, index |
      katz_deli[index] = "#{index +1}. #{customer}"
    end
    puts "The line is currently: " + katz_deli.join(" ")
  end
end

def take_a_number(katz_deli, name)
  if katz_deli.length == 0
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number 1 in line."
  elsif katz_deli.length > 0
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  elsif katz_deli.length > 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
