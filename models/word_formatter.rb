require 'pry-byebug'

class WordFormatter

  def upcase_that_thing( string )
    return string.upcase
  end

  def camel_case( string )
    camel = string.split
    result = camel.map { | word | word.capitalize }.join
    return result
  end

end
