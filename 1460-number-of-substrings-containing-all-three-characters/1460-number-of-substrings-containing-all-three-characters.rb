# @param {String} s
# @return {Integer}
def number_of_substrings(s)
    chars_map = Hash.new(0)
    chars_set = ['a', 'b', 'c'].to_set 

    result = 0 

    n = s.length 

    end_idx = n-1
    left = 0 

    for right in (0...n) do 
        chars_map[s[right]] += 1

        while(chars_map.length == 3) do 
            result += (end_idx - right + 1)
            chars_map[s[left]] -= 1
            chars_map.delete(s[left]) if chars_map[s[left]] == 0 
            left += 1 
        end 
    end 

    return result 
end