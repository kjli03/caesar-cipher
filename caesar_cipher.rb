require 'pry'
def caesar_cipher(string, shift)
  shift = shift.to_i
  if shift >= 26 then
    shift = shift % 26
  end
  array = string.bytes
  wrap = "z".ord
  uppercase = false;
  # if letter.ord < 91, uppercase the shifted letter
  array.each_with_index do |letter, index|
      new = letter + shift
      if (new > wrap) then  new -= 26
      end
      if letter < 91 then uppercase == true
      end
      letter = new.chr
      if uppercase then letter.upcase
      end
      array[index] = letter
      uppercase = false
  end
  encoded_string = array.reduce("") do |accumulator, letter|
    accumulator + letter
  end
  encoded_string
end

puts "Your string to encode: "
string = gets.chomp
puts "Shift by how many letters? "
shift = gets.chomp
puts caesar_cipher(string, shift)