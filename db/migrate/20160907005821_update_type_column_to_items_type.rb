class UpdateTypeColumnToItemsType < ActiveRecord::Migration[5.0]
  def change
    rename_column :merchants, :type, :items_type
  end
end
