
# lets put all our students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]



def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(names)
  names.each {|student| puts student}
end
# and print them
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
#it's important that print() doesnt add new line characters
