# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
    count = 0 
    map = Hash.new(0)

    (1..n).each do |num|
        sum = get_sum(num)
        map[sum] += 1 
    end 

    max = map.values.max 

    map = map.sort_by{|k, v| -v} 

    for key, val in map do 
        break if val < max
        count += 1
    end 

    return count 
end

def get_sum(num)
    s = 0 
    while(num != 0) do 
        s += num % 10
        num = num/10
    end 
    return s 
end 