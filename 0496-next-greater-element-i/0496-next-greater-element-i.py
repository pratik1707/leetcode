class Solution:
    def nextGreaterElement(self, nums1: List[int], nums2: List[int]) -> List[int]:
        stack = []
        nums2_map = {}
        result = []

        for i in range(len(nums2)):
            while(stack and nums2[stack[-1]] < nums2[i] ):
                nums2_map[nums2[stack.pop()]] = nums2[i]
            
            stack.append(i)

        for i in range(len(nums1)):
            result.append(nums2_map.get(nums1[i], -1))

        return result 


        