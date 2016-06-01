class CeasarCipher
  attr_reader :content, :shift

  def initialize(content, shift)
    @content = content.upcase
    @shift = shift % alphabet.size
  end

  def encode
    content
      .chars
      .map do |char|
        new_index = if alphabet.index(char)
          alphabet[alphabet.index(char) + shift - alphabet.size]
        else
          char
        end
      end.join
  end

  private

  def alphabet
    @alphabet ||= ('A'..'Z').to_a.join
  end
end
