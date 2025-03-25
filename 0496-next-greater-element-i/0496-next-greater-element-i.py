class Solution:
    def nextGreaterElement(self, nums1: List[int], nums2: List[int]) -> List[int]:
        result = []
        nums2_map = {}

        for i in range(len(nums2)):
            nums2_map[nums2[i]] = i        

        for num in nums1:
            index = nums2_map[num]
            flag = False 
            min_index = float('inf')            

            for j in range(index+1, len(nums2)):                
                if nums2[j] > num:
                    result.append(nums2[j])
                    flag = True 
                    break                    

            if not flag:
                result.append(-1)

        return result 


        

        

        
        