class Solution:
    def countOfSubstrings(self, word: str, k: int) -> int:
        n = len(word)
        vowels = defaultdict(int)
        vowels_set = set(['a', 'e', 'i', 'o', 'u'])

        left_win = 0 
        right_win = 0
        cons_count = 0 
        result = 0 

        for i in range(n): 
            
            char = word[i]
            if char in vowels_set:
                vowels[char] += 1
            else:
                cons_count += 1
            
            # if cons count becomes greater than k we need to move the left and right window, 
            # until we reach the consonant
            while(cons_count > k and right_win < i):
                if word[right_win] in vowels:
                    vowels[word[right_win]] -= 1
                    if vowels[word[right_win]] == 0:
                        del vowels[word[right_win]]
                else:
                    cons_count -= 1
                right_win += 1
                left_win = right_win

            # need to account for cases where vowels count is greater than 1 for each vowel
            # in that case also we will move the window 
            while(cons_count == k and right_win < i):
                if word[right_win] in vowels:
                    if vowels[word[right_win]] - 1 == 0:
                        break
                    else:
                        vowels[word[right_win]] -= 1                    
                else:
                    break
                right_win += 1
                
            
            if len(vowels) == 5 and cons_count == k:
                result += (right_win - left_win + 1)

            
        return result 

        