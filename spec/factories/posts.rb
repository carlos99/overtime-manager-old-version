FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "Some Rationale"
    user
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "Some More Rationale"
    user
  end

  factory :post_from_another_user, class: "Post" do
    date Date.yesterday
    rationale "Some More Rationale"
    non_authorized_user
  end
end
