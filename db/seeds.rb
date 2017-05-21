100.times do |user|
	@user = User.create(email: "jon#{user}.snow@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Jon", last_name: "Snow", phone: "50321131856")
end

puts "100 Users Created"

AdminUser.create(email: "admin@test.com", password: "123456", password_confirmation: "123456", first_name: "Admin", last_name: "Name", phone: "50321131856")

puts "1 Admin User created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 3.5)
end

puts "100 Posts have been created"
