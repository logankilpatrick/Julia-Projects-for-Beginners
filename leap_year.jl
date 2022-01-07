function leap_it()
    
    year = parse(Int64, (Base.prompt("Which year you want to check if it's leap year?")))
    if year%4 == 0
        println("Of course it's leap year...")
    else
        left = 4 - year%4
        println("You have to wait $left year...")
    end
end