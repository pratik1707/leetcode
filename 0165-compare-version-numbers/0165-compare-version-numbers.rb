# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
    version1 = version1.split('.')
    version2 = version2.split('.')

    max_len = [version1.length, version2.length].max 

    for i in (0...max_len) do 
        num1 = version1[i].to_i
        num2 = version2[i].to_i 

        if num1 > num2
            return 1
        elsif num2 > num1
            return -1
        end 
    end 

    return 0 
    
end