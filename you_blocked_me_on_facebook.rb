# frozen_string_literal: true

# Blocks

# do |sth|
#  "#{sth} is done"
# end

# Yield I

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
