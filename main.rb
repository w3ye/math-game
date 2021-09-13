require './player'
require './round'

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
flag = true

while p1.health > 0 && p2.health > 0
  if flag
    round = Round.new(p1)
    flag = !flag
  else
    round = Round.new(p2)
    flag = !flag
  end
  puts "P1: #{p1.health}/3 vs P2: #{p2.health}/3"
  if p1.health > 0 && p2.health > 0
    puts "----- NEW TURN -----"
  end
end

if p1.health == 0
  puts "#{p2.name} wins wit a score of #{p2.health}/3"
else
  puts "#{p1.name} wins wit a score of #{p2.health}/3"
end
puts "----- GAME OVER -----\nGood bye!"