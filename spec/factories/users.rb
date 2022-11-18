FactoryBot.define do
  factory :user do
    name { Faker::Name.name_with_middle }
    email { Faker::Internet.email }
    phone_number { Faker::PhoneNumber.cell_phone_with_country_code }
    country { User.country_code_list.sample }
    state { "ILD" }
    city { "Faisalabad" }
  end
end
