=begin
Linked List
1. HEAD
2. PREV <= DOUBLE LL
3. Next 

2-> NEXT = NULL
NULL = PREV <- 2 
LL.append(2)

 # 2 3 4 5
  # ^      
# ROUND 1
# current = head (2) -> next_data = 3
# prev = nil

# next_data_temp = 3 (current.next_data)
# current.next_data = prev
# prev = 2 
# current = 3
# 3 <- 2 -> nil
#   ^    ^

# ROUND 2
# current = head (3) -> next_data = 4
# next_data_temp = 4 (current.next_data)
# prev = 3
# current = 4
# current.next_data = prev

=end

class Node
  attr_accessor :data, :next_data
  
  def initialize(data)
    @data = data
    @next_data = nil
  end
  
  def to_s
    p "Node value with #{@data}"
  end
end

class LL
  def initialize
    @head = nil
  end

  def append(data)
    if @head
      find_tail.next_data = Node.new(data)
    else
      @head = Node.new(data)
    end
  end

  def find_tail #2
    node = @head
    if !node.next_data
      return node 
    end

    while (node = node.next_data)
      if !node.next_data 
        return node 
      end
    end
  end

  def reverse
    prev = nil
    current = @head
    while current != nil
      #hold the current HEAD's next_data in temp var
      next_data_temp = current.next_data
      #set the current HEAD's next_data to the previous data  
      current.next_data = prev
      #set the previous data to current node            
      prev = current                      
      #set current HEAD to temp var (it was the original next value)
      current = next_data_temp            
    end
    @head = prev
  end

  def print
    temp = @head
    while temp
      p temp.data
      temp = temp.next_data
    end
  end

end

linked_list = LL.new  #init a linked list

linked_list.append(2)
linked_list.append(3)
linked_list.append(5)
linked_list.append(9)
linked_list.append(11)

p "=========================="
p "           SINGLE         "
p "=========================="

linked_list.print

p "=========================="
p "           REVERSE         "
p "=========================="

linked_list.reverse
linked_list.print
