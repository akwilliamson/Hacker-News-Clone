FactoryGirl.define do
  factory :post do
    link "http://www.google.com"
    description "This is cool"
    total_score 30
    # datetime 03-14-1999
    id 2
  end
end
