

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(names)
  names.each {|student| puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end
# and print them
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def input_students
  puts "Plrease enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students =[]
  # get the first names
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
    end
    # return the array of students

end

def show_students
  print_header
  print(@students)
  print_footer(@students)
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def process(selection)
  case selection
  when "1"
    students = input_students
  when "2"
    show_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end

def interactive_menu
  @students = []
  loop do
    print_menu
    selection = gets.chomp
    process(selection)
  end
end
interactive_menu
