class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  def index
    @order = Order.new
    
    @users = User.all
    @snacks = Snack.all
    @orders = Order.all
  end

  # GET /orders/1
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  def create
    snack = Snack.find(order_params[:snack_id]) rescue nil
    user = User.find(order_params[:user_id]) rescue nil
    unless user
        send(:index)
        flash.now[:alert] =  "Please select yourself from the list."
        render action: "index" 
        return
    end
    unless snack
        send(:index)
        flash.now[:alert] = "Please select your choice of snack."
        render action: "index" 
        return
    end

    @order = Order.new(order_params)

    if @order.save
      redirect_to orders_path, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      redirect_to orders_path, notice: 'Order was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:user_id, :snack_id, :quantity)
    end
end
