require 'pry'
# Write your code here.
katz_deli = []

def line(katz_deli)
    if katz_deli.size < 1
    puts "The line is currently empty."
    else
    new_array = []
    counter = 1
    katz_deli.each do |name| 
        new_array << "#{counter}. #{name} "
    counter += 1
    end
    new_array[-1] = new_array[-1].delete_suffix(" ")
    puts "The line is currently: #{new_array.join}"
    end
end   

def take_a_number(katz_deli, new_customer)
    katz_deli.push(new_customer)
    number = katz_deli.index(new_customer) + 1
    puts "Welcome, #{new_customer}. You are number #{number} in line."
end

def now_serving(katz_deli)
    if katz_deli.size < 1
        puts "There is nobody waiting to be served!"
        else
            name = katz_deli.first
                puts "Currently serving #{name}."
                katz_deli.shift
                binding.pry
            
        
    end
end

