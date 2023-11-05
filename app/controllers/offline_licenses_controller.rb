class OfflineLicensesController < ApplicationController
  before_action :set_offline_license, only: %i[ show update destroy ]

  # GET /offline_licenses
  def index
    @offline_licenses = OfflineLicense.all

    render json: @offline_licenses
  end

  # GET /offline_licenses/1
  def show
    render json: @offline_license
  end

  # POST /offline_licenses
  def create
    @offline_license = OfflineLicense.new(offline_license_params)

    if @offline_license.save
      render json: @offline_license, status: :created, location: @offline_license
    else
      render json: @offline_license.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /offline_licenses/1
  def update
    if @offline_license.update(offline_license_params)
      render json: @offline_license
    else
      render json: @offline_license.errors, status: :unprocessable_entity
    end
  end

  # DELETE /offline_licenses/1
  def destroy
    @offline_license.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offline_license
      @offline_license = OfflineLicense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offline_license_params
      params.require(:offline_license).permit(:user_id, :lecture_id, :hours)
    end
end
