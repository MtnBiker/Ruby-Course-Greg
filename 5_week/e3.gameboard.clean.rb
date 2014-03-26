class GameBoard
  def initialize
    puts "Now the game starts"
  end
  
  def set_locations_cells(locations)
    @locations = locations
    @all_three = [] # storing guesses
  end
    
  def check_yourself(user_guess)      
    puts "THIS IS e3.gameboard.clean.rb, USE e3.gameboard.clean.rb IN THE FUTURE\n @locations.class: #{@locations.class}"
    puts "\n@locations: #{@locations}
    user_guess: #{user_guess}
    @locations.include?(user_guess): #{@locations.include?(user_guess)}"
    if @locations.include?(user_guess)
      puts "Hit"
    else
      puts "Miss"
    end
  end    
end