require 'caesar_cipher'

RSpec.describe CaesarCipher do

	cipher = CaesarCipher.new

  describe '#shift' do

    it 'works with small positive integers' do
      expect(cipher.shift('Hello, World!', 5)).to eq('Mjqqt, Btwqi!')
      expect(cipher.shift('Hello, World!', 10)).to eq('Rovvy, Gybvn!')
    end

    it 'works with large positive integers' do
      expect(cipher.shift('Hello, World!', 49)).to eq('Ebiil, Tloia!')
      expect(cipher.shift('Hello, World!', 952)).to eq('Xubbe, Mehbt!')
    end

    it 'works with small negative integers' do
      expect(cipher.shift('Hello, World!', -4)).to eq('Dahhk, Sknhz!')
      expect(cipher.shift('Hello, World!', -12)).to eq('Vszzc, Kcfzr!')
    end

    it 'works with large negative integers' do
      expect(cipher.shift('Hello, World!', -54)).to eq('Fcjjm, Umpjb!')
      expect(cipher.shift('Hello, World!', -846)).to eq('Tqxxa, Iadxp!')
    end

  end
end