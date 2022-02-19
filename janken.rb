require "csv"

#スタート
def game
 puts "最初はグー"

#じゃんけん
def janken    
  puts "じゃんけん..."
  puts "0(グー) 1(チョキ) 2(パー)"
    
  player_hand = gets.to_i
  program_hand = rand(3)
    
  jankens = ["グー" , "チョキ" , "パー"]
  
  puts "ホイ！"
  puts "-----------------"
  puts "あなたの手:#{jankens[player_hand]} \n相手の手:#{jankens[program_hand]}"
  puts "-----------------"
  
 if player_hand == program_hand
  puts "あいこで..."
  return true
 elsif (player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
  @result = "win"
  return false
 else 
  @result = "lose"
  return false
 end
end

next_game = true

while next_game
  next_game = janken
end

#勝った場合
if @result == "win"
  puts "勝った！あっち向いて..."
  puts "0(上)  1(下)  2(右)  3(左)"
  
  player_direction = gets.to_i
  program_direction = rand(4)
    
  directions = ["上", "下", "右", "左"]
    
  puts "ホイ！"
  puts "-----------------"
  puts "あなた:#{directions[player_direction]}  \n相手:#{directions[program_direction]}"
  puts "-----------------"
    
  if player_direction == program_direction
   puts "あなたの勝ち！"
   return false
  else
   puts "やり直し"
   return true
  end
end


#負けた場合
if @result == "lose"
  puts "負けた！あっち向いて..."
  puts "0(上)  1(下)  2(右)  3(左)"
  
  player_direction = gets.to_i
  program_direction = rand(4)

  directions = ["上", "下", "右", "左"]
  
  puts "ホイ！"
  puts "-----------------"
  puts "あなた:#{directions[player_direction]}  \n相手:#{directions[program_direction]}"
  puts "-----------------"
  
  if player_direction == program_direction
   puts "あなたの負け！"
   return false
  else
   puts "やり直し"
   return true
  end
end
end

next_game = true

while next_game 
  next_game = game
end