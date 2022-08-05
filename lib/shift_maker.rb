require './lib/enigma'

module ShiftMaker
  def a_key
    @key[0..1]
  end

  def b_key
    @key[1..2]
  end

  def c_key
    @key[2..3]
  end

  def d_key
    @key[3..4]
  end

  def a_offset
    (@date.to_i * @date.to_i).to_s.chars.last(4).join[0]
  end

  def b_offset
    (@date.to_i * @date.to_i).to_s.chars.last(4).join[1]
  end

  def c_offset
    (@date.to_i * @date.to_i).to_s.chars.last(4).join[2]
  end

  def d_offset
    (@date.to_i * @date.to_i).to_s.chars.last(4).join[3]
  end

end
