# Rock, Paper, Scissors
r = "rock"
p = "paper"
s = "scissors"
a =[r, p, s]

puts "Welcome to Rock, Paper, Scissors!"
puts "Your move: rock, paper, or scissors?"

ties = 0
loss = 0
wins = 0

user_move=gets.chomp

while user_move.downcase != "quit"
  if a.include?(user_move.downcase)
    computer_move = a.sample
    puts "My move is #{computer_move}."
    if user_move == computer_move
      puts "It's a tie!"
      ties = ties + 1
    elsif (user_move.downcase == r && computer_move == p) || (user_move.downcase == p && computer_move == s) || (user_move.downcase == s && computer_move == r)
      puts "You lose :("
      loss =  loss + 1
    else
      puts "You win! "
      wins =  wins + 1
    end
  else puts "Nice try."
  end
  puts "Let's start again."
  user_move=gets.chomp
end
puts "Record: wins: #{wins}; loss: #{loss}; ties: #{ties}"
