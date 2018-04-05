def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} " +
    (students.count > 1 ? "students" : "student")
    name = gets.chomp
  end

  students
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)".center(20)
  end
end

def print_footer(students)
  if students.count > 0
    puts "Overall, we have #{students.count} great " +
    (students.count > 1 ? "students" : "student")
  end
end

students = input_students
print_header
print(students)
print_footer(students)
