require './lib/shift_maker'
require './lib/enigma'

describe ShiftMaker do
  before do
    @enigma = Enigma.new
    @enigma.instance_variable_set(:@key, '02715')
    @enigma.instance_variable_set(:@date, '040895')
  end

  it 'can create keys' do
    expect(@enigma.a_key).to eq('02')
    expect(@enigma.b_key).to eq('27')
    expect(@enigma.c_key).to eq('71')
    expect(@enigma.d_key).to eq('15')
  end

  it 'can create offsets' do
    expect(@enigma.a_offset).to eq('1')
    expect(@enigma.b_offset).to eq('0')
    expect(@enigma.c_offset).to eq('2')
    expect(@enigma.d_offset).to eq('5')
  end

  it 'can create shifts' do
    expect(@enigma.a_shift).to eq(3)
    expect(@enigma.b_shift).to eq(27)
    expect(@enigma.c_shift).to eq(73)
    expect(@enigma.d_shift).to eq(20)
  end
end
