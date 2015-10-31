pet_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

def my_meth(hash, increment)
  new_hash = {}
  hash.each do |k, v|
    v = v + increment
    new_hash << v
  end
  p new_hash
end

my_meth(pet_ages, 2)