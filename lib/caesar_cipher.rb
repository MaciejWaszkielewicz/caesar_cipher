class CaesarCipher
  def self.encrtpt(message, shift)
    result = ''
    message.each_char do |char|
      if char.ord.between?(65, 90) || char.ord.between?(97, 122)
        base = char.ord < 91 ? 65 : 97
        result += ((char.ord - base + shift) % 26 + base).chr
      else
        result += char
      end
    end
    result
  end
end