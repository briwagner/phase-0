
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
  "Annabelle" => 0, "Ditto" => 3}



def  my_array_splitting(array)
  int_array = []
  string_array = []
  array.each do |x|
    if x.is_a?(Integer)
      int_array << x
    else
      string_array << x
    end
  end
  sorted_arrays = [int_array] + [string_array]
  return sorted_arrays
end

# print my_array_splitting(i_want_pets)

def my_hash_splitting(hash)
  young_pets = []
  all_pets = []
  hash.select {|k,v| young_pets << [k, v] if v <= 4 }
  hash.select {|k,v| all_pets << [k,v] if v > 4}
  sorted_dogs= [young_pets] + [all_pets]
  return sorted_dogs
end

puts "loaded"
p my_hash_splitting(my_family_pets_ages)