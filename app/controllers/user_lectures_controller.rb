class UserLecturesController < ApplicationController
  before_action :set_user_lecture, only: %i[ show update destroy ]

  # GET /user_lectures
  def index
    @user_lectures = UserLecture.all

    render json: @user_lectures
  end

  # GET /user_lectures/1
  def show
    render json: @user_lecture
  end

  # POST /user_lectures
  def create
    @user_lecture = UserLecture.new(user_lecture_params)

    if @user_lecture.save
      render json: @user_lecture, status: :created, location: @user_lecture
    else
      render json: @user_lecture.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_lectures/1
  def update
    if @user_lecture.update(user_lecture_params)
      render json: @user_lecture
    else
      render json: @user_lecture.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_lectures/1
  def destroy
    @user_lecture.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_lecture
      @user_lecture = UserLecture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_lecture_params
      params.require(:user_lecture).permit(:user_id, :lecture_id)
    end
end
