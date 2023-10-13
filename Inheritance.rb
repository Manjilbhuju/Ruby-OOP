=begin
Inheritance is one of the most important features in Ruby 
which allows the programmer to inherit the characteristics of one class into another class.
Inheritance provides the concept of “reusability”, 
i.e. If a programmer wants to create a new class and there is a class that already includes some of the code that the programmer wants,
then he or she can derive a new class from the existing class.
=end

class Chef
    def dish
        puts "This dish tastes quite delightful."
    end

    def salad
        puts "Eating salad is healthy."
    end

    def main_dish
        puts "Steak is considered main dish."
    end
end

class MasterChef < Chef
    def special_dish
        puts "Special dish is Exclusive to VIP only"
    end

    def pasta
        puts "Pasta is quite tasty."
    end
end

chef = Chef.new()
chef.dish

master_chef = MasterChef.new()
master_chef.special_dish