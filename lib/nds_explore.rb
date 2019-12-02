$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles

  count = 0
  while count < directors_database[0][:movies].length do #while count is less than the length of our first element
      puts "#{directors_database[0][:movies][count][:title]}" #we outputs
      count += 1 #and then we add one to count
    end
end
