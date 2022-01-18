function isPrime(number::Int64)
    if number == 1
        return false
    elseif number ==2
        return true
    else    # We are looking after 2, we make condition for 1 and 2. 
        for i in 2:sqrt(number)
            if mod(number, i) == 0  # Prime numbers are not divisible by the numbers that come before their square roots.  
                return false
            end
        end
        return true  # if for loop finished, it's really prime number :D
    end
end

while true
    number = parse(Int64, Base.prompt("Enter the number you want to check, press '0' to exit program")) #Taking input from user and creating while loop. 
    if number == 0
        break
    else
        if isPrime(number)
            println(number, " is a prime number!")
        else
            println(number, " is NOT a prime number!")
        end

    end
end