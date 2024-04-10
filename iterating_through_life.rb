# frozen_string_literal: true

# Arrays

# Index

# students = [ 'Marco', 'Christian', 'Julian', 'Sonia', 'Mahdi', 'Jonatas', 'Eduardo', 'Jeremy', 'Alexander', 'Franziska', 'Remi', 'Precious', 'Basria', 'Clémence', 'Luise', 'Roberto', 'Jeremy', 'Brian', 'Alina', 'Bruno', 'Tuo', 'Sachini', 'Alberto' ]
students = %w[Marco Christian Julian Sonia Mahdi Jonatas Eduardo Jeremy Alexander Franziska Remi Precious Basria Clémence Luise Roberto Jeremy Brian Alina Bruno Tuo Sachini Alberto]

# Readability & Context
p students.count # Can be passed to a Block
# p students.count { |student| student.start_with?('J') }
p students.size
p students.length # Fastest

# (C) Create
Array.new
emmas_array = []

# (R) Read One
p students[0]
p students.first
# p students[-1]
students << 'Emma (its never too late to learn)'

# (U) Update
students[-1] = 'Emma'

# (D) Destroy
students.pop
p students[-1]


# Ranges
# Array Iteration

# For Loop
for student in students
 puts "Hey there, #{student}, and welcome to Batch #1613"
end

# students.each   { |student| any_code_with(student) }
# students.map    { |student| transform(student) }
# students.select { |student| condition_on(student) }
# students.count { |student| condition_on(student) }
