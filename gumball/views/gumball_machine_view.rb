require_relative "../controllers/gumball_machine_controller"

class GumballMachineView

    def greeting
        puts "Hello to the Gumball Machine"
    end

    def menu
      choice = nil
      while choice != "G" && choice != "R" && choice != "X"
        puts "Press G to get a gumball, R to refill, or X to exit"
        choice = gets.chomp.upcase
      end

      return choice
    end

    def getGumball
      puts "Yum, here's your gumball"
    end

    def machineEmpty
        puts "Sorry, we are sold out of Gumballs. Awaiting Refill"
    end

    def refill(count)
        puts "Thanks for refilling me"
        puts "The Gumbuall count now is #{count}"
    end

    def invalidRefill(count)
        puts "Hey, where are my gumballs?"
        puts "#{count} is not right!"
        puts "Don't walk away from me!"
    end

    def refillCount
        puts "How many Gumballs are you adding?"
        return gets.to_i
    end

    def exit
        puts "Thanks for coming. See you again soon!"
    end

  end
