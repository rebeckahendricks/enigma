require './spec/spec_helper'
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
    encrypted = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
      }

    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(encrypted)
    expect(@enigma.encrypt("Hello! World!", "02715", "040895")).to eq({encryption: "keder!sprrdx!", key: "02715", date: "040895"})
  end

  it 'can encrypt a message with a key (uses todays date)' do
    encrypted = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
      }

    @enigma.instance_variable_set(:@date, '040895')
    expect(@enigma.encrypt("hello world", "02715")).to eq(encrypted)
    expect(@enigma.encrypt("Hello! World!", "02715", "040895")).to eq({encryption: "keder!sprrdx!", key: "02715", date: "040895"})
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
    expect(@enigma.encrypt("Hello! World!", "02715", "040895")).to eq({encryption: "keder!sprrdx!", key: "02715", date: "040895"})
  end

  it 'can decrypt a message with a key and date' do
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
      }

    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
    expect(@enigma.decrypt("keder!sprrdx!", "02715", "040895")).to eq({decryption: "hello! world!", key: "02715", date: "040895"})
  end

  it 'can decrypt a message with a key (uses todays date)' do
    @enigma.instance_variable_set(:@date, '040895')
    encrypted = @enigma.encrypt("hello world", "02715")
    decrypted = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
      }

    expect(@enigma.decrypt(encrypted[:encryption], "02715")).to eq(decrypted)
    expect(@enigma.decrypt("keder!sprrdx!", "02715", "040895")).to eq({decryption: "hello! world!", key: "02715", date: "040895"})
  end
end
