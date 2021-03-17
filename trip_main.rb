require "./try_trip_method.rb"

# 旅行プラン
plans = [
  { place: "沖縄", price: 10000 },
  { place: "北海道", price: 20000 },
  { place: "九州", price: 15000 }
]

disp_plans(plans) #プランの表示
chosen_plan = choose_plan(plans) #プランの番号を選択
person_num = num_of_people(chosen_plan) #予約人数を入力
calculate_price(chosen_plan, person_num) #合計料金を表示
