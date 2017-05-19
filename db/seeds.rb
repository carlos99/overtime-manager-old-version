100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: "1")
end

puts "100 Posts has been created"

 100.times do |user|
 	User.create!(first_name: "Jon", last_name: "Snow", email: "jon#{user}.snow@gmail.com", password: "123456")
 end

  puts "100 Users has been created"

 AdminUser.create!(first_name: "Daenerys", last_name: "Targaryen", email: "admin@gmail.com", password: "123456")

 puts "Admin User has been created"
