require './lib/shift_maker'

class Enigma
  include ShiftMaker
  attr_reader :character_set, :date, :key

  def initialize
    @character_set = ("a".."z").to_a << " "
    @date = Date::today.strftime('%d%m%y')
    @key = rand(99999).to_s.rjust(5, "0")
  end

  def encrypt(message, key = @key, date = @date)
    shifted_character_set = []
    character_set_index = 0
    message.chars.each_with_index do |char, index|
      if index % 4 == 0
        shifted_character_set = @character_set.rotate(a_shift)
        @character_set.each_with_index do |char2, index2|
          if char == char2
            character_set_index = index2
          end
        end
        character_set_index
        message[index] = shifted_character_set[character_set_index]
      elsif index % 4 == 1
        shifted_character_set = @character_set.rotate(b_shift)
        @character_set.each_with_index do |char2, index2|
          if char == char2
            character_set_index = index2
          end
        end
        character_set_index
        message[index] = shifted_character_set[character_set_index]
      elsif index % 4 == 2
        shifted_character_set = @character_set.rotate(c_shift)
        @character_set.each_with_index do |char2, index2|
          if char == char2
            character_set_index = index2
          end
        end
        character_set_index
        message[index] = shifted_character_set[character_set_index]
      elsif index % 4 == 3
        shifted_character_set = @character_set.rotate(d_shift)
        @character_set.each_with_index do |char2, index2|
          if char == char2
            character_set_index = index2
          end
        end
        character_set_index
        message[index] = shifted_character_set[character_set_index]
      end
    end

    encrypted = {
      encryption: message,
      key: "#{key}",
      date: "#{date}"
  }
  end

end
