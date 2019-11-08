require "pry"


class Menu
  
  # attr_accessor: :name :cost
  def initialize
      @mains = ["Hamburger", "Taco", "Return to Main Menu"
      ]
      @sides = ["Fries", "Onion Rings", "Tater Tots", "View Cart and Checkout", "Return to Main Menu"
      ]
      @cart = []
    puts "What would you like to order?"
    puts "1) Main Dishes"
    puts "2) Side Dishes"
    puts "3) View Cart and Checkout"
    puts "4) Cancel and Exit"
    choice = gets.to_i
    case choice
    when 1
      order_mains
    when 2
      order_sides
    when 3
      show_cart
    when 4
      puts "Goodbye!"
      exit
    else
      puts "Invalid choice"
    end
  end
end

def show_cart
  puts "Here's what you've ordered, does this look good to you?"
  @cart.each do |name, index|
    puts name
  end
  puts "1. Yes, let's check out!"
  puts "2. No, take me back to the main menu"
  cartchoice = gets.to_i
  case cartchoice
  when 1
    puts "Wonderful, you're all set! Enjoy your lunch and come back again soon!"
    exit
  when 2
    puts "Ok, your cart is now empty and you can re-place your order."
    initialize
  else
    puts "Invalid Entry"
    show_cart
  end

end

def order_mains
  puts "Here's what we're serving today. Please make a selection."
  @mains.each_with_index do |name, index|
    puts "#{index + 1}) #{name}"
   end
  choice = gets.to_i
  case choice
  when 1
    @cart.push("Hamburger")
    puts "Added Hamburger to cart."
    order_sides
  when 2
    @cart.push ("Taco")
    puts "Added Taco to cart."
    order_sides
  when 3
    initialize
  else
    puts "Invalid entry"
    order_mains
  end
end


def order_sides
  puts "Pick a couple sides to go with your entree!"
  @sides.each_with_index do |name, index|
    puts "#{index + 1}) #{name}"
   end
  sidechoice = gets.to_i
  case sidechoice
  when 1
    @cart.push("Fries")
    puts "Added Fries to cart."
    order_sides
  when 2
    @cart.push("Onion Rings")
    puts "Added Onion Rings to cart."
    order_sides
  when 3
    @cart.push("Tater Tots")
    puts "Added Tater Tots to cart."
    order_sides
  when 4
    show_cart
  when 5
    initialize
  else
    puts "Invalid Entry"
    order_sides
  end
  

end
Menu.new