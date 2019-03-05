def caesar_cipher(string, shift)
    negative_shift = false
    if shift > 25
        shift = shift % 26
    elsif shift < -25
        shift = -(shift.abs % 26)
    end

    result = ''
    characters = string.split('')
    characters.each do |letter|
        if letter =~ /[A-Za-z]/
            code = letter.ord + shift
            if code.chr =~ /[^A-Za-z]/
                if shift < 0
                    code += 26
                else
                    code -= 26
                end
            end
            result += code.chr
        else
            result += letter
        end
    end
    puts result

end