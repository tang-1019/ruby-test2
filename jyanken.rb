#勝つか負けるまでじゃんけん
def janken_game
    jankens = ["グー", "チョキ", "パー"]
    janken_result = "あいこ"

    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    while janken_result == "あいこ"
        my_hand = gets.to_i
        cpu_hand = rand(2)
        if my_hand == 3
            puts "戦わないを選択した為、終了します"
            janken_result = "戦わない"

        else
            puts "ほい！"
            puts "---------------"
            puts "あなたの手:#{jankens[my_hand]}"
            puts "相手の手:#{jankens[cpu_hand]}"
            puts "---------------"

            if my_hand == cpu_hand
                janken_result = "あいこ"
                puts "あいこで..."

            elsif (my_hand == 0 && cpu_hand == 1) || (my_hand == 1 && cpu_hand == 2) || (my_hand == 2 && cpu_hand == 0)
                janken_result = "勝ち"
                return attimuite(janken_result)

            else
                janken_result = "負け"
                return attimuite(janken_result)

            end
        end

    end
end

#あっち向いてほい
def attimuite(janken_result)
    direction = ["上", "下", "左", "右"]

    puts "あっちむいて..."
    puts "0(上)1(下)2(左)3(右)"

    my_direction = gets.to_i
    cpu_direction = rand(3)

    puts "ほい！"
    puts "--------------------"
    puts "あなた：#{direction[my_direction]}"
    puts "相手：#{direction[cpu_direction]}"
    puts "--------------------" 

    if my_direction == cpu_direction
        if janken_result == "勝ち"
            puts "あなたの勝ちです！"
            return false
        else
            puts "あなたの負けです..."
            return false
        end
    else
        return true
    end
end

game_result = true

#あっちむいてほいで勝負がつくまで繰り返し
while game_result
    game_result = janken_game
end

