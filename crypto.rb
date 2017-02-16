


def decalage(old_letter, shift)

	old_position = old_letter.ord
	new_position = old_position + shift
	new_letter = new_position.chr 
	return new_letter

end

def crypt(a_text, a_shift)
	res = ""
	a_text.split("").each do |letter|
		res = res + decalage(letter, a_shift)
	end
		return res
end


file_in = File.open("example.txt", "r")
file_ou = File.new("cles.txt", "w+") 

fichier = file_in.read

file_ou.write crypt(fichier, 3) 
file_ou.close