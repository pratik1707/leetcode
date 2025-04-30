# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    count = 0 
    nums.each do |num|
        count += 1 if num.to_s.length.even?
    end 

    return count 
end