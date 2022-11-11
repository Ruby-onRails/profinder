FactoryBot.define do
  factory :user do
    name {Faker::Name.name_with_middle}
    email {Faker::Internet.email}
    country_number {Faker::PhoneNumber.cell_phone_with_country_code}
    country {"Pakistan"}
    state {"ILD"}
    city { "Faisalabad" }
  end
end
