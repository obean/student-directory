require 'csv'

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
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = STDIN.gets.chomp
    end
    # return the array of students
end


def load_students(filename = "students.csv")
 puts "what file would you like to load?"
 filename = gets.chomp
 file = CSV.foreach(filename) do |row|
   @students << {name: row[0], cohort: row[1].to_sym}
 end
end

def show_students
  print_header
  print(@students)
  print_footer(@students)
end




def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry #{filename} does not exist"
    exit
  end
end

def open_file
  file = File.open("didthiswork.csv", "r")
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the students to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def process(selection)
  case selection
  when "1"
    students = input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end

def save_students
  puts "what file would uou like to use?"
  filename = gets.chomp
  CSV.open(filename, "w") do |csv|
    @students.each {|student| csv << ["#{student[:name]}", "#{student[:data]}"]}
#  @students.each {|student|
#    student_data = [student[:name], student[:cohort]]
    #csv_line = student_data.join(",")
#    file.puts csv_line

puts "students saved successfully "
end
end

def interactive_menu
  @students = []
  loop do
    print_menu
    selection = STDIN.gets.chomp
    process(selection)
  end
end

interactive_menu
