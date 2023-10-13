class BankAccount
    attr_reader :account_number, :checking, :saving
    private
    @@number_of_accounts = 0
    @@interest_rate = 3
    def create_account_number
        rand(10 ** 16)
    end

    public
    def initialize(checking_deposit, saving_deposit)
        @account_number = create_account_number
        @checking = checking_deposit
        @saving = saving_deposit
        @@number_of_accounts += 1
    end

    def deposit(account, amount)
        if account == "checking"
            @checking += amount
        elsif account == "saving"
            @saving += amount
        else
            puts "Invalid account"
        end
    end

    def withdraw(account, amount)
        if account == "checking"
            if amount > @checking
                puts "Insufficient Fund in your Checking Account"
            else
                @checking -= amount
            end
        elsif account == "saving"
            if amount > @saving
                puts "Insufficieant Fund in your Saving Account"
            else
                @saving -= amount
            end
        else
            puts "Account doesn't exist!"
        end
    end

    def total_money
        puts @checking + @saving
    end

    def account_info
        puts "Account number is #{@account_number}"
        puts "Total amount is #{@total_money}"
        puts "Checking balance is #{@checking}"
        puts "Saving balance is #{@saving}"
        puts "Interest rate id #{@@interest_rate} %"
    end

    def get_checking
        @checking
    end
    def get_saving
        @saving
    end
    def get_account_number
        @account_number
    end

end

# mine = BankAccount.new(1000, 500)
# mine.account_info
# puts mine.total_money
# yours = BankAccount.new(2000, 100)
# mine.withdraw("noaccount", 2050)
# puts mine.checking
# puts mine.saving
# puts mine.account_number

# mine.checking = 2000000;
# puts mine.get_checking