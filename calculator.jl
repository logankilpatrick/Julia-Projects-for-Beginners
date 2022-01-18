# Calculator in Julia

function calculator()
    print("------- Welcome to the Calculator app written in Julia -------")
    while true
        println("Menu ")
        println("1. Addition.")
        println("2. Subtraction.")
        println("3  Multiplication.")
        println("4. Division.")
        println("5. Exit the Calculator app.")
        operation = parse(Float64, readline())
        println("You chose $operation")
    end
end