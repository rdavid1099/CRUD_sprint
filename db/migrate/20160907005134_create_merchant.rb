class CreateMerchant < ActiveRecord::Migration[5.0]
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :type

      t.timestamps null: false
    end
  end
end
