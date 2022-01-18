# Calculator in Julia

function calculator()
    println("------- Welcome to the Calculator app written in Julia -------")
    while true
        # Print the Calculator app Menu|
        println("==== Menu ====")
        println("1. Addition ➕")
        println("2. Subtraction ➖")
        println("3  Multiplication ✖️")
        println("4. Division ➗")
        println("5. Exit the Calculator app ↗️")
        operation = parse(Float64, readline())
        # Convert the string value input to a float
        
        # Depending on the user's choice, do the corresponding operation
        if operation == 1
            print("Enter the first number: ")
            num1 = parse(Float64, readline())
            print("Enter the second number: ")
            num2 = parse(Float64, readline())
            println("Output: $(num1 + num2)")
        elseif operation == 2
            print("Enter the first number: ")
            num1 = parse(Float64, readline())
            print("Enter the second number: ")
            num2 = parse(Float64, readline())
            println("Output: $(num1 - num2)")
        elseif operation == 3
            print("Enter the first number: ")
            num1 = parse(Float64, readline())
            print("Enter the second number: ")
            num2 = parse(Float64, readline())
            println("Output: $(num1 * num2)")
        elseif operation == 4
            print("Enter the first number: ")
            num1 = parse(Float64, readline())
            print("Enter the second number: ")
            num2 = parse(Float64, readline())
            println("Output: $(num1 / num2)")
        elseif operation == 5
            println("Exiting calculator")
            break # Stop the while loop if the user decides to exit
        else
            # If the user enters another number, then ask to try again
            println("Invalid input, please try again.")
        end 

    end
end
