function leap_it()
    
    # Prompt the user for input and convert it to an int from a string
    year = parse(Int64, (Base.prompt("Which year would you like to check if it's a leap year?")))
    
    # If the remainder of dividing the year by 4 is zero (which is the basic math to check a leap year)
    if (year % 4) == 0
        println("$year is a leap year...")
    else
        
        # Calculate how long till the next leap year, if the entered year is not one
        years_away = 4 - (year % 4)
        println("$year is not a leap year, you have to wait $years_away year...")
    end
end
