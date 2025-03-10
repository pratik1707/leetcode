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
   
    while(right < n) do 
        if vowels_set.include?(word[right])
            vowels_hash[word[right]] += 1
        else
            consonant += 1 
        end 

        while(vowels_hash.length == 5 and consonant >= k) do
            #p vowels_hash
            while consonant == k
                result += 1 
                right += 1

                if vowels_set.include?(word[right])
                    vowels_hash[word[right]] += 1
                else
                    consonant += 1 
                end 

            end 

            if vowels_set.include?(word[left])
                vowels_hash[word[left]] -= 1
                vowels_hash.delete(word[left]) if vowels_hash[word[left]] == 0                 
            else
                consonant -= 1  
            end 
             left += 1
             
        end 

        right += 1 

    end 

    return result 
end