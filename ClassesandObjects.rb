=begin
  Class
Class is a blueprint or container which contains similar of Objects
It consists of methods and attributes for it's Instances which is used as behaviour of it's objects.

  Objects
Object is instance of class which must contain three properties
- Unique Identity
- State
- Behaviours
It can also have other properties as well.
=end

class User
    # instance method
    def greet
        puts "Welcome User!"
    end

    # class method
    def self.greet
        puts "Greetings User!"
    end
end

person1 = User.new
person1.greet
User.greet



#Instance Variables
class Player
    def initialize(name, email)
      @name = name
      @email = email
    end

    def welcome
        puts "Greeting #{@name}. Your email is #{@email}"
    end
end

player1 = Player.new("CursedCypher", "skullhaku727@gmail.com")
player1.welcome