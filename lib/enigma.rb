require './lib/shift_maker'

class Enigma
  include ShiftMaker
  attr_reader :character_set, :date, :key

  def initialize
    @character_set = ("a".."z").to_a << " "
    @date = Date::today.strftime('%d%m%y')
    @key = rand(99999).to_s.rjust(5, "0")
  end

  def encrypt(message, key = nil, date = nil)
    @key = key if key
    @date = date if date

    shifted_character_set = []
    message.chars.each_with_index do |char, index|
      if index % 4 == 0
        shifted_character_set = @character_set.rotate(a_shift)
      elsif index % 4 == 1
        shifted_character_set = @character_set.rotate(b_shift)
      elsif index % 4 == 2
        shifted_character_set = @character_set.rotate(c_shift)
      elsif index % 4 == 3
        shifted_character_set = @character_set.rotate(d_shift)
      end
      downcase_char = char.downcase
      character_set_index = 0
      @character_set.each_with_index do |char2, index2|
        if downcase_char == char2
          character_set_index = index2
          message[index] = shifted_character_set[character_set_index]
        end
      end
    end

    encrypted = {
      encryption: message,
      key: "#{@key}",
      date: "#{@date}"
  }
  end

  def decrypt(message, key = nil, date = nil)
    @key = key if key
    @date = date if date

    shifted_character_set = []
    message.chars.each_with_index do |char, index|
      if index % 4 == 0
        shifted_character_set = @character_set.rotate(-(a_shift))
      elsif index % 4 == 1
        shifted_character_set = @character_set.rotate(-(b_shift))
      elsif index % 4 == 2
        shifted_character_set = @character_set.rotate(-(c_shift))
      elsif index % 4 == 3
        shifted_character_set = @character_set.rotate(-(d_shift))
      end
      downcase_char = char.downcase
      character_set_index = 0
      @character_set.each_with_index do |char2, index2|
        if downcase_char == char2
          character_set_index = index2
          message[index] = shifted_character_set[character_set_index]
        end
      end
    end

    decrypted = {
      decryption: message,
      key: "#{@key}",
      date: "#{@date}"
      }
  end
end
