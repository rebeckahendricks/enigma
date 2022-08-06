require './lib/enigma'
require 'date'

describe Enigma do
  before do
    @enigma = Enigma.new
    @enigma.instance_variable_set(:@key, '02715')
    @enigma.instance_variable_set(:@date, '040895')
  end

  it 'exists' do
    expect(@enigma).to be_instance_of(Enigma)
  end

  it 'can encrypt a message with a key and date' do

    encrypted = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
      }

    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(encrypted)
  end

  it 'can encrypt a message with a key (uses todays date)' do
    encrypted = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
      }

    @enigma.instance_variable_set(:@date, '040895')
    expect(@enigma.encrypt("hello world", "02715")).to eq(encrypted)
  end

  it 'can encrypt a message (generates random key and uses todays date)' do
    encrypted = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
      }

    @enigma.instance_variable_set(:@key, '02715')
    @enigma.instance_variable_set(:@date, '040895')
    expect(@enigma.encrypt("hello world")).to eq(encrypted)
  end

  it 'can decrypt a message with a key and date' do
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
      }

    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end

  it 'can decrypt a message with a key (uses todays date)' do
    encrypted = @enigma.encrypt("hello world", "02715")
    decrypted = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
      }

    @enigma.instance_variable_set(:@date, '040895')
    expect(@enigma.decrypt(encrypted[:encryption], "02715")).to eq(decrypted)
  end
end
