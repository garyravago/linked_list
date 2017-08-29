require_relative 'linked_list_node'
require_relative 'stack'


user_stack = Stack.new
continue = true
while continue

  print "\n\n"
  
  puts "( a ) Push a value on to the stack?"
  puts "( b ) Pop the last value from the stack?"
  puts "( c ) Quit\n\n"
  print "Select a choice: "

  choice = gets.chomp
  case choice
    when 'a'
      print "Please enter a number: "
      value = gets.chomp
      user_stack.push(value)
    when 'b'
      user_stack.pop
    when 'c'
      continue = false
    else
      puts "Error! Invalid choice"
  end

  print_values(user_stack.data)
  puts "----------"
  revlist = reverse_list(user_stack.data)
  print_values(revlist)
end