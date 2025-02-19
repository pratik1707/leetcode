class Solution:
    def get_anagrams(self, word):        
        n = math.factorial(len(word))
        freq = Counter(word)

        for v in freq.values():
            n //= math.factorial(v)

        return n % (10**9 + 7)

    def countAnagrams(self, s: str) -> int:
        total = 1

        for word in s.split():
            total *= self.get_anagrams(word)

        return total % (10**9+7)
        