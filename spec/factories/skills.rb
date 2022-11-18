FactoryBot.define do
  factory :skill do
    name { "MyString" }
    type { "" }
  end
  factory :frontend do
    name { 'Next js' }
  end
  factory :backend do
    name { 'C' }
  end
end
