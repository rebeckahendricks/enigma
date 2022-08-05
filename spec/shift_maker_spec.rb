require './lib/shift_maker'
require './lib/enigma'

describe ShiftMaker do
  before do
    @enigma = Enigma.new
    allow(@enigma).to receive(:@key).and_return('12345')
    allow(@enigma).to receive(:date).and_return('040822')
  end

  it 'can create keys' do
    expect(@enigma.a_key).to eq('12')
    expect(@enigma.b_key).to eq('23')
    expect(@enigma.c_key).to eq('34')
    expect(@enigma.d_key).to eq('45')
  end

  it 'can create offsets' do
    expect(@enigma.a_offset).to eq('5')
    expect(@enigma.b_offset).to eq('6')
    expect(@enigma.c_offset).to eq('8')
    expect(@enigma.d_offset).to eq('4')
  end

  xit 'can create shifts' do
    expect(@enigma.a_shift).to eq('17')
    expect(@enigma.b_shift).to eq('29')
    expect(@enigma.c_shift).to eq('42')
    expect(@enigma.d_shit).to eq('49')
  end
end
