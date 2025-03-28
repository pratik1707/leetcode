class StockSpanner
    def initialize()
        @prices = [] # stack
        @index = 0 
    end


=begin
    :type price: Integer
    :rtype: Integer
=end
    def next(price)       
        
        while(@prices.size > 0 and @prices[-1][0] <= price) do 
            @prices.pop 
        end 

        @index += 1 

        if @prices.size > 0
            result = @index - @prices[-1][1]
        else
            result = @index - 0
        end 
        
        @prices << [price, @index] 

        return result 
    end


end

# Your StockSpanner object will be instantiated and called as such:
# obj = StockSpanner.new()
# param_1 = obj.next(price)