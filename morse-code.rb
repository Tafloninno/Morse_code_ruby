def decode_char(morse_code)
  morse_dict = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z",
  }

  morse_dict[morse_code].upcase
end

def decode(sentence)
  decoded_word = ''
  sentence.split('   ').each do |word|
    word.split.each do |char|
      decoded_word += decode_char(char)
    end
    decoded_word += ' '
  end
  return decoded_word.strip
end

puts decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
