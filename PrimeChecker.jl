function isPrime(number::Int64)
    if number == 1
        return false

    elseif number ==2
        return true

    else
        for i in 2:number-1
            if mod(number, i) == 0
                return false
            end
        
        end
        return true
    end
end

while true
    number = parse(Int64, Base.prompt("Enter the number you want to check, press '0' to exit program"))
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