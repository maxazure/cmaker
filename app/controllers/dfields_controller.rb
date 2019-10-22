class DfieldsController < ApplicationController
  before_action :set_dfield, only: [:show, :update, :destroy]

  # GET /dfields

  def index
    @page_size = params[:pagesize] || 10
    @page = params[:page] || 1
    @dfields = Dfield.paginate(page: @page, per_page: @page_size).order('id DESC')
  end

  # GET /dfields/1
  def show
    render json: @dfield
  end

  # POST /dfields
  def create
    @dfield = Dfield.new(dfield_params)

    if @dfield.save
      render json: @dfield, status: :created
    else
      render json: @dfield.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dfields/1
  def update
    if @dfield.update(dfield_params)
      render json: @dfield
    else
      render json: @dfield.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dfields/1
  def destroy
    @dfield.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dfield
      @dfield = Dfield.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dfield_params
      params.require(:dfield).permit(:field_name, :field_type, :is_required, :is_show_in_list, :is_editable, :api, :brick_id, )
    end
end
