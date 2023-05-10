def decode_char(morse_code)
  morse_dict = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse_dict[morse_code].upcase
end

def decode_word(word)
  decoded_word = ''
  word.split.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end

def decode(message)
  decoded_message = ''
  message.split('   ').each do |word|
    decoded_message += "#{decode_word(word)} "
  end
  decoded_message.strip
end

puts decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
