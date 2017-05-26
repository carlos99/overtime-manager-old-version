100.times do |user|
	@user = User.create!(email: "jon#{user}.snow@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Jon", last_name: "Snow", phone: "4444444444")
end

puts "100 Users Created"

AdminUser.create(email: "admin@test.com", password: "123456", password_confirmation: "123456", first_name: "Admin", last_name: "Name", phone: "4444444444")

puts "1 Admin User created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", user_id: @user.id, overtime_request: 3.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 Audit Logs have been created"
