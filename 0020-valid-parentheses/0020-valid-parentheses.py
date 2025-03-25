class Solution:
    def isValid(self, s: str) -> bool:
        n = len(s)
        stack = []
        chars_map = {')': '(', '}': '{', ']': '['}

        for char in s:
            if char == '(' or char == '[' or char == '{':
                stack.append(char)
            else:
                if not stack:
                    return False 
                    
                if char in chars_map and stack[-1] != chars_map[char]:
                    return False 
                stack.pop()

        return len(stack) == 0
        