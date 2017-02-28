FactoryGirl.define do
  factory :link do
    sequence :url do |n|
      "http://link#{n}.com"
    end
    title "MyString"
    read_count 0
  end
end
