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

  def a_shift
    a_key.to_i + a_offset.to_i
  end

  def b_shift
    b_key.to_i + b_offset.to_i
  end

  def c_shift
    c_key.to_i + c_offset.to_i
  end

  def d_shift
    d_key.to_i + d_offset.to_i
  end

  # def shifted_character_set
  # end

end
