FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@gmail.com"
  end
  factory :user do
    first_name 'Jon'
    last_name 'Snow'
    email {generate :email}
    password '123456'
    password_confirmation '123456'
    phone "5555555555"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'Snow'
    email {generate :email}
    password '123456'
    password_confirmation '123456'
    phone "5555555555"
  end

  factory :non_authorized_user, class: "User" do
    first_name 'Tywin'
    last_name 'Lannister'
    email {generate :email}
    password '123456'
    password_confirmation '123456'
    phone "5555555555"
  end
end
