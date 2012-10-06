FactoryGirl.define do
  sequence(:book_name) { |n| "Book for Java-#{n}" }
  sequence(:description) { |n| " New book in Java-#{n}" }
  factory :book do
    name { FactoryGirl.generate(:book_name) }
    description { FactoryGirl.generate(:description) }
    price 1.0
    editor_review " Good book but boring "
    publisher " Manning "
    language "English"
    ebook true
    seller " Book Mart for less "
    file_size "1 MB"

  end

  factory :review do
    review " This is not good book "
    reviewer " Anonymous "
    recommend true
    review_helpful true
    book
  end

end