"""
A simple Chatbot. 

# Examples
```julia
julia> include("chatbot.jl")
Hi there! What is you name?: Julia
Hello, Julia! How are you?
Julia: I'm great! 
Chatty: Cool!
Julia: What is your name? 
Chatty: I'm Chatty
Julia: How are you Chatty? 
Chatty: I'm happy as always
Julia: What is your hobby? 
Chatty: I love to play the piano
Julia: exit
Good Bye!
```

# Contributors:
- [Sedat Aybars Nazlica](https://github.com/saybarsnazlica)
"""


# Chatbot type
struct Chatbot
    name::String
    mood::String
    hobby::String
end


# Parse the user input to the question for the chatbot
function parse_input(input::String)
    if isempty(input)
        return "nothing to say"
    end
    if occursin("name", input)
        input = "what is your name?"
    elseif occursin("hobby", input)
        input = "what is your hobby?"
    elseif occursin("how are", input)
        input = "how are you?"
    else
        input = "default"
    end
    return input
end


# Respond to the question
# Give a random response so the conversation feels more natural
function respond(bot::Chatbot, question::String)
    responses = Dict(
        "what is your name?" => ["I'm $(bot.name)", "Call me $(bot.name)", "My friends call me $(bot.name)"],
        "how are you?" => ["I feel $(bot.mood)", "I'm so $(bot.mood)", "I'm $(bot.mood) as always"],
        "what is your hobby?" => ["I $(bot.hobby)", "When I'm not busy, I $(bot.hobby)", "I love to $(bot.hobby)"],
        "nothing to say" => ["Hey, I can't hear you!", "Your silence means a lot", "Hmm..."],
        "default" => ["It's nice chatting with you", "Cool!", "Oh!"]
    )
    response = rand(responses[question])
    println("$(bot.name): ", response)
end


# Main function to chat
function chat()
    bot = Chatbot("Chatty", "happy", "play the piano")
    username = Base.prompt("Hi there! What is you name?")
    println("Hello, $(username)! How are you?")
    while true
        user_input = lowercase(Base.prompt("$(username)"))
        if user_input == "exit"
            println("Good Bye!")
            break
        else
            question = parse_input(user_input)
            respond(bot, question)
        end
    end
end


# Call the chat() function
chat()
