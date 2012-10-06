class ArtifactsController < ApplicationController

  def get_books
    params[:id] ? @book=Book.find(params[:id]) : @book=Book.all
    respond_to do |format|
      format.html
      format.xml { render :xml => @book.to_xml }
    end
  end

  def get_reviews
    params[:id] ? @review=Review.find(params[:id]) : @review=Review.all
    respond_to do |format|
      format.html
      format.xml { render :xml => @review.to_xml }
    end
  end

end
