class HomepageTilesController < ApplicationController
  before_action :set_homepage_tile, only: [:show, :edit, :update, :destroy]

  # GET /homepage_tiles
  # GET /homepage_tiles.json
  def index
    @homepage_tiles = HomepageTile.all
  end

  # GET /homepage_tiles/1
  # GET /homepage_tiles/1.json
  def show
  end

  # GET /homepage_tiles/new
  def new
    @homepage_tile = HomepageTile.new
  end

  # GET /homepage_tiles/1/edit
  def edit
  end

  # POST /homepage_tiles
  # POST /homepage_tiles.json
  def create
    @homepage_tile = HomepageTile.new(homepage_tile_params)

    respond_to do |format|
      if @homepage_tile.save
        format.html { redirect_to @homepage_tile, notice: 'Homepage tile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @homepage_tile }
      else
        format.html { render action: 'new' }
        format.json { render json: @homepage_tile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homepage_tiles/1
  # PATCH/PUT /homepage_tiles/1.json
  def update
    respond_to do |format|
      if @homepage_tile.update(homepage_tile_params)
        format.html { redirect_to @homepage_tile, notice: 'Homepage tile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @homepage_tile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homepage_tiles/1
  # DELETE /homepage_tiles/1.json
  def destroy
    @homepage_tile.destroy
    respond_to do |format|
      format.html { redirect_to homepage_tiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homepage_tile
      @homepage_tile = HomepageTile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homepage_tile_params
      params.require(:homepage_tile).permit(:text)
    end
end
