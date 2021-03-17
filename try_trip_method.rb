
 # プランの表示
def disp_plans(plans)
  puts "旅行プランを選択してください。"
  plans.each.with_index(1) do |plan,i|
    puts "#{i}. #{plan[:place]}旅行 (#{plan[:price]}円)"
  end
end

# プランの番号を選択
def choose_plan(plans)
  while true
    print "プランの番号を選択>"
    select_plan_num = gets.to_i
    break if (1..3).include?(select_plan_num)
    puts "1~3の番号を入力してください。"
  end
  plans[select_plan_num - 1]
end


# 予約人数を入力
def num_of_people(chosen_plan)
  puts <<~TEXT
  #{chosen_plan[:place]}旅行ですね。
  何名で予約されますか？
  TEXT
  while true
    print "人数を入力 > "
    person_num = gets.to_i
    break if person_num >= 1
    puts "1以上を入力してください。"
  end
  person_num
end

# 合計料金を表示
def calculate_price(chosen_plan, person_num)
  total_price = chosen_plan[:price]*person_num
  if person_num >= 5
    puts "5名以上ですので10%割引となります。"
    total_price *= 0.9
  end
  puts "合計料金は#{total_price.floor}円になります。"
end
