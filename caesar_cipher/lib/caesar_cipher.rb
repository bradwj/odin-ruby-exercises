# ASCII A-Z (65-90), a-z (97-122)
class CaesarCipher

	def shift(string, n)
		res = string.split('').map do |ch|
			if ch.ord.between?(65,90) || ch.ord.between?(97,122)
				base = ch.ord <= 90 ? 65 : 97
				((ch.ord - base + n) % 26 + base).chr
			else
				ch
			end
		end
		res.join()
	end

end