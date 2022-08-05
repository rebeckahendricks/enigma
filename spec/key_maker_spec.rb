require './lib/key_maker'

describe KeyMaker do
  before do
    @enigma = Enigma.new
    allow(@enigma).to receive(:rand).and_return('12345')
  end

  xit 'can create A key' do
    expect(@enigma.a_key).to eq(12)
  end

  xit 'can create B key' do
    expect(@enigma.a_key).to eq(23)
  end

  xit 'can create C key' do
    expect(@enigma.a_key).to eq(34)
  end

  xit 'can create D key' do
    expect(@enigma.a_key).to eq(45)
  end
end
