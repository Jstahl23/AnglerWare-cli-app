class AnglerwareCLI

  def initialize
  end

  def call
    puts "Welcome to Anglerware!!!"
    puts "This program provides you"
    puts "with the info needed to start bass fishing."
    choose_category
    goodbye
  end

  def choose_category
    puts ""
    puts "Please select a category to continue:"
    puts <<-DOC
       1. Getting Started (for new fisherman)
       2. Baits
       3. Reels (Spin vs Baitcast)
       4. Rod Characteristics
       5. Fishing News
    DOC
    menu
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Enter the number of the category you would like to read"
      puts "(input 'list' to see the menu or 'exit' to leave the program)"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Entering the Getting Started category.."
      when "2"
        puts "Entering the Baits category.."
      when "3"
        puts "Entering the Reels category.."
      when "4"
        puts "Entering the Rod category.."
      when "5"
        puts "Entering the Fishing News category.."
      when "list"
        choose_category
      when "exit"
        goodbye
        exit
      else
        puts ""
        puts "-------------------------------------------------------------------"
        puts "I did not understand that input, please enter 1-5, 'list' or 'exit'"
        puts "-------------------------------------------------------------------"
      end
    end
  end

  def goodbye
    puts ""
    puts "--------------------------------------------"
    puts "Thanks for using Anglerware, see you later!!"
    puts "--------------------------------------------"
  end

end
