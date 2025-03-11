# @param {String} word
# @param {Integer} k
# @return {Integer}
def count_of_substrings(word, k)
    result = 0 
    n = word.length 

    vowels_set = ['a', 'e', 'i', 'o', 'u'].to_set 

    vowels_hash = Hash.new(0)
    consonant = 0 
    left = 0 
    right = 0 
   
    for i in (0...n) do 
        if vowels_set.include?(word[i])
            vowels_hash[word[i]] += 1
        else
            consonant += 1 
        end 

        while(consonant > k and right < i) do 
            if vowels_set.include?(word[right])
                vowels_hash[word[right]] -= 1
                vowels_hash.delete(word[right]) if vowels_hash[word[right]] == 0     
            else
                consonant -= 1 
            end 
            right += 1
            left = right 
        end 

        while(consonant == k and right < i) do
            #p vowels_hash
            if vowels_set.include?(word[right])
                if vowels_hash[word[right]]  - 1 == 0
                    break 
                else 
                    vowels_hash[word[right]]  -= 1 
                end 
            else
                break                 
            end 
            right += 1           
             
        end 

        if vowels_hash.length == 5 and consonant == k
            result += (right - left + 1 )
        end 

    end 

    return result 
end