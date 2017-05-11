class TransactionsController < ApplicationController

  def new
    @art = Art.find(params[:art_id])
    @transaction = Transaction.new

  end

  def create
    @transaction = Transaction.create(transaction_params)
    # @transaction.art.price = @transaction.bid_price
    # @transaction.art.save
    redirect_to art_path(@transaction.art_id)
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def update
#    @transaction = Transaction.
  end

  private

  def transaction_params
    params.require(:transactions).permit(:art_id, :user_id, :bid_price)
  end
end
