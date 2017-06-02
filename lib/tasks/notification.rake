namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they have overtime or not"
  task sms: :environment do
  end

  desc "Sends Mail notification to managers each day to inform about pending overtime request"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_user = AdminUser.all

    if submitted_posts.count > 0
      admin_user.each do |admin|
        ManagerMailer.email(admin).deliver_later
        puts "Email has been sent"
      end
    end
  end
end
