class Wordformatter

def initialize

end


def upcase(string)
  output = string.upcase
  return output
end

def camelcase(string)
  words = string.split
  final_string = ""
  words.each{|word| final_string += word.capitalize}
  return final_string
end






end