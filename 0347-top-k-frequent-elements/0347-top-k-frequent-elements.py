class Solution:
    def partition(self, freq, arr, start, end):
        pivot = random.randint(start, end)

        arr[start], arr[pivot] = arr[pivot], arr[start ]
        smaller = start 

        for bigger in range(smaller+1, end+1):
            if freq[arr[bigger]] <= freq[arr[start]]:
                smaller += 1
                arr[smaller], arr[bigger] = arr[bigger], arr[smaller]
        
        arr[start], arr[smaller] = arr[smaller], arr[start]

        return smaller 

    def quick_select(self, freq, arr, k, n):
        
        start = 0 
        end = n - 1 

        while(start <= end):
            pivot = self.partition(freq, arr, start, end)
            
            if pivot == n-k:
                return 
            elif pivot < n-k:
                start = pivot + 1
            else:
                end = pivot - 1 


    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        freq = Counter(nums)

        #print(freq.keys())
        
        arr = list(freq.keys())

        n = len(arr)
        
        self.quick_select(freq, arr, k, n)

        return arr[n-k:n]
        
