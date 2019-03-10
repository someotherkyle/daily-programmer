require 'pry'

def balanced(input)
  count = { "x" => 0, "y" => 0 }
  i = 0
  while i < input.length()
    count[input[i]] += 1
    i += 1
  end
  if count["x"] != count["y"]
    return false
  else
    return true
  end
end

def generate_hash(input)
  count = Hash.new(0)
  i = 0
  while i < input.length()
    count[input[i]] += 1
    i += 1
  end
  count
end

def balanced_bonus(input)
  count = generate_hash(input)
  canon = count[input[0]]
  count.each do | var, val |
    if val != canon
      return false
    end
  end
  true
end

puts balanced("xxxyyy") 
puts balanced("yyyxxx") 
puts balanced("xxxyyyy")
puts balanced("yyxyxxyxxyyyyxxxyxyx") 
puts balanced("xyxxxxyyyxyxxyxxyy") 
puts balanced("") 
puts balanced("x") 

puts balanced_bonus("xxxyyyzzz") 
puts balanced_bonus("abccbaabccba") 
puts balanced_bonus("xxxyyyzzzz") 
puts balanced_bonus("abcdefghijklmnopqrstuvwxyz") 
puts balanced_bonus("pqq") 
puts balanced_bonus("fdedfdeffeddefeeeefddf") 
puts balanced_bonus("www") 
puts balanced_bonus("x") 
puts balanced_bonus("") 
