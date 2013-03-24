class Grep
  def initialize(string)
    @string = string
  end
  
  def find_in(file)
    found = []
     file.each_line do |line|
       found.push(line) if line.include?(@string)
     end
     return found
  end
end