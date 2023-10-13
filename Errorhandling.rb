=begin
Handling an Exception
begin
    #...process, may raise an exception
rescue =>
    #... error handler
else
    #... executes when no error
ensure
    #... always executed
=end

lucky_nums = [4, 8, 15, 23, 42]
begin
    lucky_nums['dogs']
    num = 10/0
rescue ZeroDivisionError
    puts "Division by zero error."
rescue TypeError => e
    puts e
end