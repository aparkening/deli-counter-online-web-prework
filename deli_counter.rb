require 'pry'
katz_deli = [ ]

# no mare arguments
# now, let's not keep track of names
# instead, each customer gets a number 
# we should still have the same functionality
# except we should announce people by their number 
# the first number is 617 
# the current (starting) line should be [615, 616]

# Return current people in line
def line
  if (!people.empty?)
    line_number = 1
    people_line = "The line is currently:" 
    people.each do |person|
      people_line.concat " #{line_number}. #{person}"
      line_number += 1
    end
  else 
    people_line = "The line is currently empty."
  end
  puts people_line
  return people_line
end 

# Add new person to people in line
def take_a_number
  people << name
  place = people.index(name) + 1
  place_in_line = "Welcome, #{name}. You are number #{place} in line."
  puts place_in_line
  return people
end

# Puts name person being served remove them from the front of the line
def now_serving
  if (!people.empty?)
    puts "Currently serving #{people.first}."
    people.shift
  else 
    puts "There is nobody waiting to be served!"
  end
  return people
end


binding.pry

=begin 
katz_deli = [ ]

# Return current people in line
def line(people)
  if (!people.empty?)
    line_number = 1
    people_line = "The line is currently:" 
    people.each do |person|
      people_line.concat " #{line_number}. #{person}"
      line_number += 1
    end
  else 
    people_line = "The line is currently empty."
  end
  puts people_line
  return people_line
end 

# Add new person to people in line
def take_a_number(people, name)
  people << name
  place = people.index(name) + 1
  place_in_line = "Welcome, #{name}. You are number #{place} in line."
  puts place_in_line
  return people
end

# Puts name person being served remove them from the front of the line
def now_serving(people)
  if (!people.empty?)
    puts "Currently serving #{people.first}."
    people.shift
  else 
    puts "There is nobody waiting to be served!"
  end
  return people
end
=end 
