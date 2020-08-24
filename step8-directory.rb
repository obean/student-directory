



def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
=begin
def print(names)
  names.each {|student| puts "#{student[:name]}, #{student[:cohort]}"}
end
=end
# and print them
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end


# Stage 8 challenges completed below

#1. number the list of students
def print(names)
  names.each_with_index {|student, index| puts "#{index}. #{student[:name]}"}
end



#2.
def print_begins_with_t(names)
  names.each {|student| puts "#{student[:name]}, #{student[:cohort]}" unless student[:name].split('')[0].downcase != "t"}
end

#3. only print with less than 12 letters
def print_12_or_less(names)
  names.each {|student| puts "#{student[:name]}, #{student[:cohort]}" unless student[:name].length >= 12}
end
#4. use a while loop rather than each
def print_while(names)
  i = 0
  while i < names.length
    student = names[i]
    puts "#{student[:name]}, #{student[:cohort]}"
    i += 1
  end
end

#6 print in the center of the terminal
def print_center(names)
  names.each {|student| puts "#{student[:name]}, #{student[:cohort]}".center(100)}
end
#7 allow input of cohort information
def cohorts(month)
  return month if month
  return "alumni" if !month
end
def input_students_and_cohort
  puts "Please enter the name and cohort of the student, separated by a comma"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  name = gets.chomp.split(",")
  cohort = name[1] || nil


  while name.length != 0
puts "cohort = #{cohort}"
    # add the student hash to the array
    students << {name: name[0], cohort: cohorts(cohort).to_sym}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end


students = input_students_and_cohort
print_header
print_while(students)
print_footer(students)
