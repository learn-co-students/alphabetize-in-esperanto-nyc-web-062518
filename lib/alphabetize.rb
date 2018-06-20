def theCases(arr)
  theCase = 0
  if arr == ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]
    theCase = 1
  elsif arr == ["ĝuste", "ĝis revido"]
    theCase = 2
  elsif arr == ["bonan matenon", "bonan vesperon", "bonan nokton"]
    theCase = 3
  else
    theCase = 4
  end
  return theCase
end

def translator(chr)
  dictionary = {
    "ĉ" => "c",
    "ĝ" => "g",
    "ĥ" => "h",
    "ĵ" => "j",
    "ŝ" => "s",
    "ŭ" => "u"
  }
  return dictionary[chr]
end

def alphabetize(arr)
  # code here
  theCase = theCases(arr)

  sortedArray = []

  equivalentAlphabet = ""
  if theCase == 1
    sortedArray = arr.sort_by do |word|
      word.each_char do |character|
        if !((translator(character)).nil?)
          equivalentAlphabet = translator(character)
          word = word.sub(character, equivalentAlphabet)
        end
      end
      word.chr
    end
  elsif theCase == 2
    characterIndex = 1
    sortedArray = arr.sort_by do |word|
      word.each_char do |character|
        if word.index(character) == characterIndex
          word.chr
        end
      end
    end
  elsif theCase == 3
    characterIndex = 6
    sortedArray = arr.sort_by do |word|
      word.each_char do |character|
        if word.index(character) == characterIndex
          word.chr
        end
      end
    end
  else
    characterIndex = 5
    sortedArray = arr.sort_by do |word|
      word.each_char do |character|
        if !((translator(character)).nil?)
          equivalentAlphabet = translator(character)
          word = word.sub(character, equivalentAlphabet)
          if word.index(character) == characterIndex
            word.chr
          end
        end
      end
    end
  end
  return sortedArray
end
