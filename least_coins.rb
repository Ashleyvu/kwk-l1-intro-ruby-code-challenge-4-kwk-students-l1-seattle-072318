puts "How many cents do you have?"
total_coins = gets.strip
 puts "Calculating how many and what type of coins needed to get #{total_coins}."
def least_coins(total_coins)
  total_coins = total_coins.to_i 
  coins= {
    :quarters => 0, 
    :dimes => 0, 
    :nickels => 0, 
    :pennies => 0
  }
  while total_coins >= 25 
  coins[:quarters] += 1 
  total_coins = total_coins -25 
end
  while total_coins >= 10 
  coins[:dimes] += 1 
  total_coins = total_coins -10
end 
while total_coins >= 5 
coins[:nickels] += 1 
total_coins = total_coins -5 
end 
while total_coins>= 1 
coins[:pennies] += 1 
total_coins = total_coins - 1 
end 
end
puts least_coins