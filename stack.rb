class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    #puts "Pushing #{value} on to the stack"
    if @data
      node = LinkedListNode.new(value, @data)
      @data = node
    else
      node = LinkedListNode.new(value)
      @data = node
    end
  end

  def pop
    if @data
      #puts "Popping #{@data.value} from the top of the stack"
      top_stack_value_to_pop = @data.value
      new_top_node = @data.next_node
      @data = new_top_node
      top_stack_value_to_pop
    else
      #puts "The stack is empty"
      @data
    end
  end
end





