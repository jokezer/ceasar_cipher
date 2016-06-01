class CeasarCipher
  attr_reader :content, :shift

  def initialize(content, shift)
    @content = content
    @shift = shift % alphabet.size
  end

  def encode
    content
      .chars
      .map do |char|
        new_index = if alphabet.index(char.upcase)
          new_char = alphabet[alphabet.index(char.upcase) + shift - alphabet.size]
          upcase?(char) ? new_char : new_char.downcase
        else
          char
        end
      end.join
  end

  private

  def alphabet
    @alphabet ||= ('A'..'Z').to_a.join
  end

  def upcase?(char)
    char == char.upcase
  end
end
