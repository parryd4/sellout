class TransactionsController < ApplicationController

  def new
    @art = Art.find(params[:art_id])
    @transaction = Transaction.new
    @new_price = (@art.price * 0.05).round(2)
  end

  def create
    @transaction = Transaction.create(transaction_params)
    @transaction.art.price = @transaction.bid_price
    @transaction.art.save
    redirect_to art_path(@transaction.art_id)
  end

  private

  def transaction_params
    params.require(:transactions).permit(:artist_id, :art_id, :bidder_id, :bid_price)
  end
end
