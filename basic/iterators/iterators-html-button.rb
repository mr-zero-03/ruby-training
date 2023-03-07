def html_button( id ) # Base method
  html_button_text = '<button id="' + id + '">'
  html_button_text += yield if block_given? # Allows not receive a block
  html_button_text += '</button>'
  html_button_text
end

empty_button = html_button( 'the-id' ) # No block given
puts empty_button

hello_world_button = html_button( 'the-id' ) do # Modify the behaviour of the function
  text1 = '<span>23</span>'
  text2 = '<span>Hello World!</span> <icon></icon>'
  text1 + text2
end

puts hello_world_button
