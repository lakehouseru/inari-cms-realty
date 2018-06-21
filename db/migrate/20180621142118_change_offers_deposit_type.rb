class ChangeOffersDepositType < ActiveRecord::Migration[5.1]
  def change
    change_column :offers, :deposit, :string
  end
end
