class Game
    ROOM_POINTS = [5, 10, 15].freeze
  
    def initialize
      @total_points = 0
    end
  
    def start
      puts "Welcome to the Adventure Game!"
      puts "You have #{@total_points} points."
  
      loop do
        puts "Choose a room (1-3) to enter or 'exit' to end the game: "
        choice = gets.chomp.downcase
        break if choice == 'exit'
  
        room_number = choice.to_i
        if room_number.between?(1, 3)
          enter_room(room_number)
        else
          puts "Invalid choice. Please enter a number from 1 to 3 or 'exit'."
        end
      end
  
      puts "Game over! You collected a total of #{@total_points} points."
    end
  
    private
  
    def enter_room(room_number)
      points = ROOM_POINTS[room_number - 1]
      @total_points += points
      puts "You entered Room #{room_number} and earned #{points} points."
      puts "Total points: #{@total_points}"
    end
  end
  
  Game.new.start
  