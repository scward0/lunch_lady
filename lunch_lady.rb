class LunchLady

  def welcome
    puts "Hello! I am a old smelly lunch lady, im here to serve you slighly expired food"
  end
  
  def display_options
    entrees = {
                :"Spaghetti and Meatballs" => 9.00 ,
                :"Chicken Parm" => 8.00,
                :"Veggie Burger" => 5.00,
                :"Sushi Roll" => 10.00,
                :"Tacos" => 7.00 
               }
    sides = {
              :"Ceaser Salad" => 3.00,
              :"Fries" => 3.00,
              :"Soup" => 3.00,
              :"Onion Rings" => 3.00,
              :"Fruit" => 3.00
            }

    sleep 1
    puts "Here are your entree options:\n"
    
    entrees.keys.each_with_index do |key, numb|
       puts "#{numb + 1}: #{key}"
    end
   
    sleep 1
    puts "Here are your side options: \n"

    sides.keys.each_with_index do |key, numb|
      puts "#{numb + 1}: #{key}"
    end
  end
end

ll = LunchLady.new
ll.welcome
ll.display_options
