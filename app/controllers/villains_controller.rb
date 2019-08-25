# frozen_string_literal: true

class VillainsController < ProtectedController
  before_action :set_villain, only: %i[show update destroy]

  # GET /villains
  def index
    @villains = current_user.villains.all

    render json: @villains
  end

  # GET /villains/1
  def show
    render json: @villain
  end

  # POST /villains
  def create
    @villain = current_user.villains.new(villain_params)

    if @villain.save
      render json: @villain, status: :created, location: @villain
    else
      render json: @villain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /villains/1
  def update
    if @villain.update(villain_params)
      render json: @villain
    else
      render json: @villain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /villains/1
  def destroy
    @villain.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_villain
    @villain = current_user.villains.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def villain_params
    params.require(:villain).permit(:name, :location, :universe, :user_id)
  end
end
