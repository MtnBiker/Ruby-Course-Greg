class GameBoard
  def initialize
    puts "Now the game starts"
  end
  
  def set_locations_cells(locations)
    @locations = locations
    @locations = [0, 1, 2]
    @all_three = [] # storing guesses
    # puts "8. locations: " # Array doesn't change with a Control-C in Console
    # puts @locations    
  end
  
  def what_are_the_locations # used for testing
    puts "14. @locations: #{@locations}"
  end
  
  # # def good_guess(locations, @all_three, user_guess)
  #   if locations.include?(user_guess)
  #     @all_three[locations.index(user_guess)] = locations.index(user_guess) 
  #       # 0, 1, 2. Verbose logic, but refactor later
  #     if @all_three.join = "012"
  #       "kill" # confirm that this gets returned
  #     else
  #       puts "Hit"
  #     end
  #   else
  #     puts "Miss"
  #   end
  # end  
  puts "Just to see if running current version 6"
  
  def check_yourself(user_guess)  
    puts "\n\nNow in check_yourself. @all_three: #{@all_three}. user_guess: #{user_guess}" 
    
    puts "@locations.class: #{@locations.class}"
    what_are_the_locations
    puts "\n36. user_guess: #{user_guess}
    @locations.include?(user_guess): #{@locations.include?(user_guess)}"
    # good_guess(@locations, @all_three, user_guess)
    if @locations.include?(user_guess)
      @all_three[@locations.index(user_guess)] = @locations.index(user_guess) 
        # 0, 1, 2. Verbose logic, but refactor later
      if @all_three.join = "012"
        "kill" # confirm that this gets returned
      else
        puts "Hit"
      end # @all_three.join
    else
      puts "Miss"
    end
  end  
  
end