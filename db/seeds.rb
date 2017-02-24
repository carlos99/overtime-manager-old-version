100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content")
end

puts "100 Posts have been created"

# 100.times do |user|
# 	User.create!(first_name: "Jon", last_name: "Snow", email: "jon#{user}.snow@gmail.com", password: "123456")
# end
#
# puts "100 Users have been created"
