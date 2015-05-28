class LunchLady
    @@entrees = {
                :"Spaghetti and Meatballs" => 9.00 ,
                :"Chicken Parm" => 8.00,
                :"Veggie Burger" => 5.00,
                :"Sushi Roll" => 10.00,
                :"Tacos" => 7.00 
               }
    @@sides = {
              :"Ceaser Salad" => 3.00,
              :"Fries" => 3.00,
              :"Soup" => 3.00,
              :"Onion Rings" => 3.00,
              :"Fruit" => 3.00
            }

  def welcome
    puts "Hello! I am a old smelly lunch lady, im here to serve you slighly expired food"
  end
  
  def display_select_entrees
    
    sleep 1
    puts "Here are your entree options:\n"
    
    @@entrees.keys.each_with_index do |key, numb|
       puts "#{numb + 1}: #{key}"
    end
   
    puts 'Please select one entree:  '
    selection = gets.chomp.to_i - 1
    meal_entree = @@entrees.keys[selection]
    puts "You have selected #{@@entrees.keys[selection]}"
end

  def display_select_sides
    sleep 2
    puts "Here are your side options: \n"

    @@sides.keys.each_with_index do |key, numb|
      puts "#{numb + 1}: #{key}"
    end

    puts 'Please select two sides:  '
    selection1 = gets.chomp.to_i - 1
    selection2 = gets.chomp.to_i - 1
    meal_side1 = @@sides.keys[selection1]
    meal_side2 = @@sides.keys[selection2]
    puts "You have selected #{@@sides.keys[selection1]} and #{@@sides.keys[selection2]}"

  end
end

ll = LunchLady.new
ll.welcome
ll.display_select_entrees
ll.display_select_sides
