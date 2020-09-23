class AddBeanToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :bean, :string
  end
end
