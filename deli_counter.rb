require 'pry'

katz_deli = []

def line(katz_deli)
    if katz_deli.empty?
        puts 'The line is currently empty.'
    else
        line_text = 'The line is currently:'
        katz_deli.each do |name|
            line_text << " #{katz_deli.find_index(name) + 1}. #{name}"
        end
        puts line_text
    end
end

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.empty?
        puts 'There is nobody waiting to be served!'
    else
        puts "Currently serving #{katz_deli[0]}."
        katz_deli.shift
    end
end

# binding.pry
# 0