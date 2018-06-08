
ESPERANTO_ALPHABET = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

def alphabetize(arr)
  arr.sort_by do |a| 
    a.split("").map{ |char| ESPERANTO_ALPHABET.index(char) } 
  end 
end