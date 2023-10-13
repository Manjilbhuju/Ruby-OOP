=begin
Encapsulation is a wrapping of data under single unit which prevents the data from being accessed by code outside the wrap.
It can only be accessed through any member function of same class.
Its can be achieved by declaring variables as private.
=end

class Encapsulation
    def initialize(name, id, game)
        @player_name = name
        @uid = id
        @game = game
    end

    def display
        puts "Player name: #{@player_name}"
        puts "State you game: #{@game}"
    end

    private

    def user_id
        @uid
    end
end

player1 = Encapsulation.new("Hakuu", 2057, "PUBG")
player2 = Encapsulation.new("Bamfuu", 2058, "PUBG")
player3 = Encapsulation.new("Dhaguu", 2056, "PUBG")

player1.display
player2.display
player3.display


#Classic Getter and Setter
#Getter methods are used to get the value of an instance variable
#setter methods are used to set the value of an instance variable

class User
    def initialize(player)
        @player = player
    end

    #Classic getter method
    def player
        @player
    end

    #Classic setter method
    def player=(player)
        @player = player
    end
end

p1 = User.new("CursedCypher")
puts p1.player

p1.player = "Haku"
puts p1.player

# Accessor
# Getter and Setter method can also be used using Accessor

class Game
    attr_reader :gamer, :game

    def initialize(gamer, game)
        @gamer = gamer
        @game = game
    end
end

G1 = Game.new("CursedCypher", "PUBG")
puts G1.gamer
puts G1.game


class Book
    attr_writer :title,:author

    def initialize(title, author)
        @title = title
        @author = author
    end
end

book = Book.new("Hobbits", "Manjil")

puts book.title = ("Lord of The Rings")


class Book
    attr_accessor :title,:author

    def initialize(title, author)
        @title = title
        @author = author
    end
end

book = Book.new("Hobbits", "CursedCypher")
puts book.title = ("Harry Potter")
puts book.author