class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index

    @review = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end
  def edit
   @review = Review.find(params[:id])
  end

  def update
     if @review.update(review_params)
      redirect_to review_path(@review
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to review_path
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end
end




