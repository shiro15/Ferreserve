user = User.create(name: "管理者", address: "東京都千代田区神田神保町3−8", mail: "admin@example.com", pass: "admin", administrator: true)

names = ["佐藤太郎", "鈴木次郎", "高橋花子", "専修太郎"]
mails = %w(Taro Jiro Hana Senshu)

0.upto(3) do |idx|
  user = User.create(
    name: "#{names[idx]}",
    address: "神奈川県川崎市多摩区東三田2−1−1",
    mail: "#{mails[idx]}@example.com",
    pass: "password"
  )
end
