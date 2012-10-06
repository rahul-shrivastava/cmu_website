# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
data=[["Java 7","Bill"],["Rspec book","Tomas"],["Ruby on Rails","Eric"], [" Python Made Easy","Mindy" ],
       ["World is Flat","Andreas"],[" Submission","Ram"],
            ["Age of Shiva","Philip"],["The White tiger","Ravi"],["Everyone is hanging without me","William"]]
sellers=["Amazon","Manning","Steel Publishers"]
reviews=["Great book. Highly recommended"," Good Book but could be better "]
Book.delete_all
Review.delete_all

data.each do | cal |
  book=Book.new
  book.name=" #{cal[0]} "
  book.description=" Description for #{cal[0]}"
  book.price=rand*(100.0-10.0) + 10.0
  book.editor_review=" Good Book "
  book.language="English"
  book.ebook = true
  book.publisher= sellers.sample
  book.seller= sellers.sample
  book.file_size=(rand*(10.0-1.0) + 1.0).to_s
  book.created_at=Date.current.to_datetime
  book.updated_at= Date.current.to_datetime
  book.save!
  review=Review.new
  review.book_id=book.id
  review.review=reviews.sample
  review.reviewer=cal[1]
  review.recommend=( rand() > 0.5 ? true : false )
  review.review_helpful= ( rand() > 0.5 ? true : false )
  review.created_at= Date.current.to_datetime
  review.updated_at= Date.current.to_datetime
  review.save!
end


