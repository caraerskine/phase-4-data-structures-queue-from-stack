require_relative './stack'

# your code here
class MyQueue

    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add(value)
            # To add an element to the end of the queue, we first move all elements from s2 to s1,
    # then push the new element to s1, and finally move back all elements from s1 to s2.
       until @s2.empty?
        @s1.push(@s2.pop)
    end
        
    @s1.push(value)

    until @s1.empty?
        @s2.push(@s1.pop)
    end
  end

  def remove
    # To remove and return the first element in the queue, we simply pop from s2.
    @s2.pop
  end

  def peek
    # To peek at the first element in the queue without removing it, we simply peek at s2.
    @s2.peek
  end



end