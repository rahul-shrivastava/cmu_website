class Review < ActiveRecord::Base
  attr_accessible :book_id, :recommend, :review, :review_helpful, :reviewer
  validates_presence_of :book_id, :review,  :reviewer
  belongs_to :book
  validates :review , :length => { :minimum => 2, :maximum => 150 ,
                                   :too_short => "must have at least %{count} words",
                                   :too_long  => "must have at most %{count} words"}

  # @param [book_id] id
  def self.get_book_name(id)
    Book.find(id).name
  end
end
