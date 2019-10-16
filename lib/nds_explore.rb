$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds 
end

def print_first_directors_movie_titles(nds)
  list_of_movies = []
  array_of_keys = [] #we don't know what the encrypted keys are 
  nds.each_key do |key|
    array_of_keys << key 
  end 
  
  first_counter = 0 
  while first_counter < nds.length do 
    #puts "First layer #{first_counter} has #{nds[first_counter]} hashes"
    second_counter = 0 
    array_of_keys2 = []
    nds[array_of_keys[first_counter]].each_key do |key|
      array_of_keys2 << key 
    end 
    
    while second_counter<nds[array_of_keys][array_of_keys2].length do 
      list_of_movies<<nds[array_of_keys][array_of_keys2][second_counter]
    end 
    
  end 
  puts list_of_movies
  return list_of_movies
end 

