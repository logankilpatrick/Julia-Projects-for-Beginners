# Rolling dice game in Julia

function rolling_dice()
    
    # Number of sides for dice
    num_sides_dice = 6

    # While the user wants to roll a dice, continue to generate a number between 1 and the number of sides
    while true
        print("Do you want to roll a dice? (1=Yes/0=No): ")
        guess = parse(Int64, readline())
        # Convert the string value input to a number

        if guess == 1
            println("Rolling dice")
            current_side = rand(1:num_sides_dice)
            println("Dice has number $current_side")
        elseif guess == 0
            println("Exiting")
            break # Stop the while loop if the user decides to do so
        else
            println("Invalid input, please try again")
        end 
    end

end 