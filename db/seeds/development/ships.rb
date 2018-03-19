names = ["うみ丸","ふね丸","そら丸","なみ丸","かぜ丸"]
0.upto(4) do |idx|
  ship = Ship.create(
    ship_name: names[idx],
    seat_cap: 15 + idx,
    car_cap: 12 + idx,
    room_cap: 10 + idx, 
    car_charge: 1000 + idx*10,
    room_charge: 3000 + idx*100,
    meal_charge: 500 + idx*10,
    fare: 2000 + idx*100
  )
end