# frozen_string_literal: true

class HerosController < ProtectedController
  before_action :set_hero, only: %i[show update destroy]

  # GET /heros
  def index
    @heros = current_user.heros.all

    render json: @heros
  end

  # GET /heros/1
  def show
    render json: @hero
  end

  # POST /heros
  def create
    @hero = current_user.heros.build(hero_params)

    if @hero.save
      render json: @hero, status: :created, location: @hero
    else
      render json: @hero.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /heros/1
  def update
    if @hero.update(hero_params)
      render json: @hero
    else
      render json: @hero.errors, status: :unprocessable_entity
    end
  end

  # DELETE /heros/1
  def destroy
    @hero.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hero
    @hero = current_user.heros.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def hero_params
    params.require(:hero).permit(:name, :location, :universe, :user_id)
  end
end
