class RatingsController < ApplicationController
  before_action :set_rating, only: [:destroy]

  # GET /ratings/new
  def new
    post = Post.find(params[:post_id])
    @rating = Rating.new(post: post)
  end

  # POST /ratings
  def create
    @rating = Rating.new(rating_params)

    if @rating.save
      redirect_to @rating.post, notice: 'Rating was successfully created.'
    else
      render :new
    end
  end

  # DELETE /ratings/1
  def destroy
    @rating.destroy!
    redirect_to @rating.post, notice: 'Rating was deleted.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_rating
    @rating = Rating.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def rating_params
    params.require(:rating).permit(:post_id, :stars)
  end
end
