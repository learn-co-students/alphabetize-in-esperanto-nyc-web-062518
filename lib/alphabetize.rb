def alphabetize(arr)
  arr.sort_by do |sentence|
    sentence.split("").map do |character|
      ALPHABET.index(character)
    end
  end
end
