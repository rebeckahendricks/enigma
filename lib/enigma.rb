require './lib/shift_maker'

class Enigma
  include ShiftMaker
  attr_reader :date, :key

  def initialize
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

end
