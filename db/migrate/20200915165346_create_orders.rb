class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.boolean :paid
      t.integer :total

      t.timestamps
    end
  end
end
