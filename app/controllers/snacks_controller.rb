class SnacksController < ApplicationController
  before_action :set_snack, only: [:show, :edit, :update, :destroy]

  # GET /snacks
  def index
    @snacks = Snack.all
  end

  # GET /snacks/1
  def show
  end

  # GET /snacks/new
  def new
    @snack = Snack.new
  end

  # GET /snacks/1/edit
  def edit
  end

  # POST /snacks
  def create
    # byebug
    @snacks = []
    names_array = parse_names_csv(snack_params[:name])
    names_array.each do |name|
      @snacks << Snack.new(name: name, vendor: snack_params[:vendor], price: snack_params[:params])
    end
    
    if @snacks.each(&:save).all?
      redirect_to '/orders', notice: 'Snack was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /snacks/1
  def update
    if @snack.update(snack_params)
      redirect_to @snack, notice: 'Snack was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /snacks/1
  def destroy
    @snack.destroy
    redirect_to snacks_url, notice: 'Snack was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snack
      @snack = Snack.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def snack_params
      params.require(:snack).permit(:name, :vendor, :price)
    end

    def parse_names_csv(names_csv)
      names_array = names_csv.gsub(/ */, "").split(",")
    end
end
