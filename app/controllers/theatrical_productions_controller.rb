class TheatricalProductionsController < ApplicationController

  def index
    productions = TheatricalProduction.all
    render json: productions
  end

  def new
    # give you the form for making a production
    render json: {success: true}
  end

  def create
    production = TheatricalProduction.create(name: theatrical_production_params['name'])
    render json: production
  end

  def edit
    # give you the form for editing a production
  end

  def update
    # PATCH/PUT updates come in here
  end

  def show
    # read only
  end

  def destroy
    # DELETE updates to destroy
  end

  def theatrical_production_params
    params.permit(:name)
  end

end