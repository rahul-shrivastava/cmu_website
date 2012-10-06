require 'spec_helper'

describe Book do

  let(:book) {FactoryGirl.create(:book)}

  subject {book}

  it {should respond_to :name}
  it {should respond_to :description}
  it {should respond_to :price}
  it {should respond_to :editor_review}
  it {should respond_to :publisher}
  it {should respond_to :language}
  it {should respond_to :ebook}
  it {should respond_to :seller}
  it {should respond_to :file_size}
  it {should respond_to :description}

  it {should be_valid}


end