require './lib/enigma'
require 'date'

describe Enigma do
  before do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_instance_of(Enigma)
  end
end
