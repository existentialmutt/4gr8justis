FactoryBot.define do
  factory :time_entry do
    notes { "MyText" }
    hours { 1.5 }
    client { "MyString" }
    project { "MyString" }
    date { "2020-10-27" }
  end
end
