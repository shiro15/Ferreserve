nextDay = Time.now
0.upto(9) do |idx|
  service = Service.create(
    ship_id: (idx % 5) + 1 ,
    route_id: (idx % 2) + 1,
    start_date: nextDay,
    passenger_num: (idx % 4) + 1,
    taken_room: (idx % 3),
    car_num: (idx % 3) + 2
  )
  nextDay = nextDay.next_week
end