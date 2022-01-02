# Number Guessing Game in Julia

function play_number_guess_human()

    total_numbers = 25 # 

    # Generate a random number within a certain range
    target_number = rand(1:total_numbers)
    guess = 0

    # While the number has not been guessed, keep prompting for guesses
    while guess != target_number
        print("Please guess a number between 1 and $target_number: ")
        guess = parse(Int64, readline())
        # Convert the string value input to a number

        # If we are within +/-2 of the target, give a hint
        if abs(target_number - guess) <= 2 && target_number != guess
            print("\nYou are getting closer!\n")
        end
    end

    print("Nice job, you got it!")
end
