require 'spec_helper'

describe Review do

  let(:review) {FactoryGirl.create(:review)}

  subject {review}

  it {should respond_to :review}
  it {should respond_to :reviewer}
  it {should respond_to :recommend}
  it {should respond_to :review_helpful}

  it {should be_valid}

end