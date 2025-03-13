class Solution:
    def hasSameDigits(self, s: str) -> bool:
        n = len(s)

        new_s = ''

        while(len(s) > 2):
            for i in range(len(s)-1):
                sum_nums = (int(s[i]) + int(s[i+1])) % 10
                new_s += str(sum_nums)

            s = new_s 
            new_s = ''
            

        return s[0] == s[1]


        