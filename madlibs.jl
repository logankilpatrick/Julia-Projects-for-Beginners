# Mad Libs in Julia

function play_mad_libs()

    print("Enter a verb (action): ")
    verb1 = readline()

    print("Enter an adjective (descriptive word): ")
    adj1 = readline()

    print("Enter a noun (person place or thing): ")
    noun1 = readline()

    print("Enter another noun (person place or thing): ")
    noun2 = readline()

    print("Enter a catchphrase (something like 'hands up!'): ")
    phrase1 = readline()
    
    base_sentence = "John $verb1 down the street one night, playing with his $adj1 $noun1. When all of a /
    sudden, a $noun2 jumped out at him and said $phrase1"
    print("\n\n", base_sentence)
end

play_mad_libs()
