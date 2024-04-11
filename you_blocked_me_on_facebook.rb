# frozen_string_literal: true

# Someone else built this
require 'date'

# Something we built (another file)
require_relative 'iterating_through_life'

### Blocks

# Everything between do & end is a block of code
# Everything between { & } is a block of code

# do |sth|
#  "#{sth} is done"
# end

# { |sth| puts "#{sth} is done" }


# STUDENTS.each_with_index do |student, index|
#  puts "#{index + 1} Hi, #{student}, please do your flashcards!!!"
# end

# STUDENTS.each   { |student| any_code_with(student) }
# STUDENTS.map    { |student| transform(student) }
# STUDENTS.select { |student| condition_on(student) }
# STUDENTS.count { |student| condition_on(student) }

# selected_students = STUDENTS.select do |student|
#   student.start_with?("M")
# end


# Blocks can either
# - be taken by methods (.each, .map, etc.)
# [1, 2, 3].each do |num|
#  puts num * 2
# end

# - or can be yielded to/passed by as part of the method call (method())
# def method_name
#  yield if block_given?
# end

# method_name do
#  puts 'This ☝🏻 block is passed to the method call.'
# end

### Yield I

def greet()
  puts '>>> Before the block'
  yield if block_given?
  puts '>>> After the block'
end

greet() do
  puts 'Inside the block'
end

# Yield II

def timer
  puts '>>> Starting timer'
  start_time = Time.now
  yield if block_given?
  puts ">>> Elapsed time: #{Time.now - start_time}s"
end

timer() do
  puts "I'm doing something slow..."
  sleep(2)
  puts "I'm done :)"
end

# Yield III

def like(post_id)
  puts ">>> Processing like for post ##{post_id}..."
  yield if block_given?
  puts ">>> Post ##{post_id} liked!"
end

like(42) do
  puts "Notification: User liked your post!"
end

# Yield IV

# 5.times do |i|
#  puts "Running time #{i}"
# end

def repeat(number_of_times)
  (1..number_of_times).each do |i|
    yield(i)
  end
end

repeat(23) do |i|
  puts "✉️  Emma: Hi, there Student no. #{i}! Please, do your flashcards"
end

# HAVE FUN YIELDING!!!!!
