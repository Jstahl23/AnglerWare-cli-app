require 'colorize'


class AnglerwareCLI

  def initialize
  end

  def call
    puts "-------------------------------------------".colorize(:yellow)
    puts "Welcome to Anglerware!!!".colorize(:yellow)
    puts "This program provides you".colorize(:yellow)
    puts "with the info needed to start bass fishing.".colorize(:yellow)
    puts "-------------------------------------------".colorize(:yellow)
    choose_category
    goodbye
  end

  def choose_category
    puts ""
    puts "Please select a category to continue:".colorize(:blue)
    puts <<-DOC.colorize(:light_blue)
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
      puts "Enter the number of the category you would like to read".colorize(:green)
      puts "(input 'list' to see the menu or 'exit' to leave the program)".colorize(:green)
      input = gets.strip.downcase
      case input
      when "1"
        puts "Entering the Getting Started category..".colorize(:light_blue)
      when "2"
        puts "Entering the Baits category..".colorize(:light_blue)
      when "3"
        puts "Entering the Reels category..".colorize(:light_blue)
      when "4"
        puts "Entering the Rod category..".colorize(:light_blue)
      when "5"
        puts "Entering the Fishing News category..".colorize(:light_blue)
      when "list"
        choose_category
      when "exit"
        goodbye
        exit
      else
        puts ""
        puts "-------------------------------------------------------------------".colorize(:red)
        puts "I did not understand that input, please enter 1-5, 'list' or 'exit'".colorize(:red)
        puts "-------------------------------------------------------------------".colorize(:red)
      end
    end
  end

  def goodbye
    puts ""
    puts "--------------------------------------------"
    puts "Thanks for using Anglerware, see you later!!".colorize(:yellow)
    puts "--------------------------------------------"
  end

end
