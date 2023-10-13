=begin

=end

module Tools
    def greet(name)
        puts "Greeting #{name}"
    end

    def farewell(name)
        puts "Farewell #{name}"
    end
end

include Tools
Tools.greet("Manjil")
Tools.farewell("Manjil")