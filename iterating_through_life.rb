# frozen_string_literal: true

### Arrays

# Store multiple elements
# Index starts at 0

# Variable vs. CONSTANT (Global, useable everywhere)
# students = [ 'Marco', 'Christian', 'Julian', 'Sonia', 'Mahdi', 'Jonatas', 'Eduardo', 'Jeremy', 'Alexander', 'Franziska', 'Remi', 'Precious', 'Basria', 'Clémence', 'Luise', 'Roberto', 'Jeremy', 'Brian', 'Alina', 'Bruno', 'Tuo', 'Sachini', 'Alberto' ]
STUDENTS = %w[Marco Christian Julian Sonia Mahdi Jonatas Eduardo Jeremy Alexander Franziska Remi Precious Basria Clémence Luise Roberto Jeremy Brian Alina Bruno Tuo Sachini Alberto]

# Readability & Context
p STUDENTS.count # Can be passed to a Block
# p students.count { |student| student.start_with?('J') }
p STUDENTS.size
p STUDENTS.length # Fastest

# (C) Create
Array.new
emmas_array = []

# (R) Read One
p STUDENTS[0]
p STUDENTS.first
# p STUDENTS[-1]

# (U) Update
# STUDENTS << "Santi"
# STUDENTS.append("Adam")
STUDENTS[0] = "Marcito"
STUDENTS << 'Emma (its never too late to learn)'
STUDENTS[-1] = 'Emma'

# (D) Destroy
# STUDENTS.delete("Marcito")
# STUDENTS.delete_at(0)
STUDENTS.pop
p STUDENTS[-1]

### Ranges
# Array Iteration

# For Loop
for student in STUDENTS
 puts "Hey there, #{student}, and welcome to Batch #1613"
end

# for index in (0...STUDENTS.size)
#   student = STUDENTS[index]
#  puts "#{index + 1} Hi, #{student}, please do your flashcards!!!"
# end

