class Hamming
    def Hamming.distance(a, b)
        if a.size != b.size
            raise ArgumentError.new("leftStrand and rightStrand must be equal length.")
        end

        a.codepoints.zip(b.codepoints).select{|pair| pair[0] != pair[1]}.size
    end
end

