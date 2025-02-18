# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
    return [] if digits.length == 0

    @digits_map = {
        "2" => ['a','b','c'], "3" => ['d','e','f'], "4" => ['g','h','i'], 
        "5" => ['j','k','l'], "6" => ['m','n','o'], "7" => ['p', 'q', 'r', 's'],
        "8" => ['t', 'u', 'v'], "9" => ['w', 'x', 'y', 'z']
    }

    res = []

    digits_helper(digits, 0, [], res, digits.length)

    return res 
end

def digits_helper(digits, i, slate, res, n)
    if i == n
        res << slate.dup.join  
        return 
    end 

    characters = @digits_map[digits[i]] # a b c

    characters.each do |char|
        slate << char 
        digits_helper(digits, i+1, slate, res, n)
        slate.pop 
    end 
end 