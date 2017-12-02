class AddNameKatakanaToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :name_katakana, :string
  end
end
