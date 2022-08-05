require './lib/enigma'
require 'date'

describe Enigma do
  before do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_instance_of(Enigma)
  end

  it 'can encrypt a message with a key and date' do
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
      }

    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  xit 'can decrypt a message with a key and date' do
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
      }

    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end
#~~~~incomplete specs below~~~~#
  xit 'can encrypt a message with a key (uses todays date)' do
    encrypted = {}

      #probable mocks & stubs here
    expect(@enigma.encrypt("hello world", "02715")).to eq(encrypted)
  end

  xit 'can decrypt a message with a key (uses todays date)' do
    encrypted = @enigma.encrypt("hello world", "02715")
    decrypted = {}

    expect(@enigma.decrypt(encrypted[:encryption], "02715")).to eq(decrypted)
  end

  xit 'can encrypt a message (generates random key and uses todays date)' do
    encryted = {}
    #definite mocks & stubs here
    expect(@enigma.encrypt("hello world")).to eq(encrypted)
  end
end
