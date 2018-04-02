class AddDepositToOfferAndRemoveStatus < ActiveRecord::Migration[5.1]
  def change
  	add_column :offers, :deposit, :integer
  	remove_column :offers, :status
  end
end
