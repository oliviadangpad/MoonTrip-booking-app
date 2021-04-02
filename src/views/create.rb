require "tty-prompt"
require 'securerandom' #add library 

module AddNew
    def self.create
        print "What is the passenger's name? "
        name = gets.chomp
        print "How old is the passenger? "
        age = gets.chomp.to_i
        
        date = TTY::Prompt.new.select ("Choose departure date") do |menu|
            menu.choice "10 October 2022"
            menu.choice "11 November 2022"
            menu.choice "12 December 2022"
        end
        seat_class = TTY::Prompt.new.select ("Choose your seat class") do |menu|
            menu.choice "First-class"
            menu.choice "Economy"
        end
        [name, age, date, seat_class]
    end
end