require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.email { Faker::Internet.email }
    f.encrypted_password { Faker::Internet.password }
  end

end