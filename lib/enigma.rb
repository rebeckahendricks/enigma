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
    encrypted = {
      encryption: "#{message}",
      key: "#{key}",
      date: "#{date}"
  }
  end

  def encrypted(message)
    # rotated_character_set = @enigma.character_set.rotate(@enigma.a_shift % 27)
    # @character_set
  end

end
