class MinStack
    def initialize()
        @stack = []
        @min_stack = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
        @stack << val 
        @min_stack << val if @min_stack.size == 0  or @min_stack[-1] >= val 
    end


=begin
    :rtype: Void
=end
    def pop()
        v = @stack.pop 
        @min_stack.pop if v == @min_stack[-1]
    end


=begin
    :rtype: Integer
=end
    def top()
        @stack[-1]
    end


=begin
    :rtype: Integer
=end
    def get_min()
        @min_stack[-1]
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()