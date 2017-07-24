class PurchasesController < ApplicationController
  def destroy
    purchase = Purchase.find(params[:id])
    client = purchase.client
    purchase.destroy
    redirect_to client, notice: 'Položka smazána.'
  end
end
