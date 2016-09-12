### Lab 3 - Guess the number game ###

number = rand(100)
i = 0
puts "Welcome to the number game, guess a number between 0-100 in 10 tries."
loop do
    puts "Make a guess?"
    i +=1
    if i == 10
        puts "Game over!! You tried 10 times!"
        break
    end
    guess = gets.chomp.to_i
    if number > guess 
        puts "Higher!"
        next
    elsif number < guess
        puts "Lower!"
        next
    else number == guess
        puts "You win!!"
        break
    end
end