# Computer Number Guessing Game in Julia

using Random

function play_number_guess_computer()

    print("Please enter a number between 1 and 50 for the computer to try and guess: ")
    
    # Take in the user input and convert it to a number
    target_number = parse(Int64, readline())
    
    # Create an array of 50 numbers
    guess_order = collect(1:50)
    
    # Define our random seed
    rng = MersenneTwister(1234)

    # Shuffle the array randomly given ur seed
    shuffled_guess = shuffle(rng, guess_order)

    # Loop through each guess and see if it right
    for guess in shuffled_guess

        if guess == target_number
            print("\nThe computer cracked the code and guessed it right!")
            break # Stop the for loop if we get it right
        end
        
        print("\nComputer guessed: $guess")
    end
end
