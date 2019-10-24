class BricksController < ApplicationController
  before_action :set_brick, only: [:show, :update, :destroy]

  # GET /bricks

  def index
    @page_size = params[:pagesize] || 10
    @page = params[:page] || 1
    @bricks = Brick.paginate(page: @page, per_page: @page_size).order('id DESC')
  end

  # GET /bricks/1
  def show
    render json: @brick
  end

  # POST /bricks
  def create
    @brick = Brick.new(brick_params)

    if @brick.save
      render json: @brick, status: :created
    else
      render json: @brick.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bricks/1
  def update
    if @brick.update(brick_params)
      render json: @brick
    else
      render json: @brick.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bricks/1
  def destroy
    @brick.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brick
      @brick = Brick.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brick_params
      params.require(:brick).permit(:name, :table_type, :name_plural, :parent_dir, :api_path, )
    end
end
