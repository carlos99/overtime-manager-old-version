FactoryGirl.define do
  factory :post do
    date Date.today
    work_performed "Some Work Performed"
    daily_hours 14.5
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    work_performed "Some More Work Performed"
    daily_hours 4.5
    user
  end

  factory :post_from_another_user, class: "Post" do
    date Date.yesterday
    work_performed "Some More Work Performed"
    non_authorized_user
  end
end
