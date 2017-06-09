10.times do |employee|
	@employee = Employee.create!(email: "jon#{employee}.snow@gmail.com", password: "123456", password_confirmation: "123456", first_name: "Jon", last_name: "Snow", phone: "4444444444", social_security_number: 12345, company: "Test Company")
end

puts "10 Users Created"

AdminUser.create(email: "carlos@ufgcorp.com", password: "123456", password_confirmation: "123456", first_name: "Admin", last_name: "Name", phone: "4444444444", social_security_number: 12345, company: "Test Company")

puts "1 Admin User created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

puts "3 Audit Logs have been created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", user_id: @employee.id, daily_hours: 14.5)
end

puts "100 Posts have been created"
