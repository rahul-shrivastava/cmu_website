class Book < ActiveRecord::Base

  attr_accessible :description, :ebook, :editor_review, :file_size, :language, :name, :price, :publisher, :seller
  has_many :reviews
  validates_presence_of :ebook,  :language, :name, :price, :publisher, :seller
  validates :language, :inclusion => { :in => %w(English Chinese Hindi),
                                       :message => "%{value} is not a valid language. Please select English Chinese
                                                      or Hindi Language"}
  validates :name, :length => { :minimum => 2 }
  validates :description, :length => { :minimum => 2 , :maximum => 150}
  validates :price , :numericality => { :greater_than => 0.0 }


end
