class LunchLady
    @@entrees = {
                :"Spaghetti and Meatballs" => 9.99 ,
                :"Chicken Parm" => 8.99,
                :"Veggie Burger" => 5.99,
                :"Sushi Roll" => 10.99,
                :"Tacos" => 7.99 
               }
    @@sides = {
              :"Ceaser Salad" => 3.99,
              :"Fries" => 3.99,
              :"Soup" => 3.99,
              :"Onion Rings" => 3.99,
              :"Fruit" => 3.99
            }

    @@meal_entree = " "

    @@meal_side1 = " "

    @@meal_side2 = " "

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
    @@meal_entree = @@entrees.keys[selection]
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
    @@meal_side1 = @@sides.keys[selection1]
    @@meal_side2 = @@sides.keys[selection2]
    puts "You have selected #{@@sides.keys[selection1]} and #{@@sides.keys[selection2]}"

  end

  def display_meal
    puts "For your meal you have chosen: \n
          #{@@meal_entree} for $#{@@entrees[@@meal_entree]} as your entree,
          #{@@meal_side1} for $#{@@sides[@@meal_side1]} as your first side and
          #{@@meal_side2} for $#{@@sides[@@meal_side2]} as your second side. This
          totals to  $#{@@entrees[@@meal_entree] + @@sides[@@meal_side1] + 
           @@sides[@@meal_side2]}"
  end
end

ll = LunchLady.new
ll.welcome
ll.display_select_entrees
ll.display_select_sides
ll.display_meal

