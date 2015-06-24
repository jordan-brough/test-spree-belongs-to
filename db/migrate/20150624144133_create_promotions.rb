class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.references :order
      t.references :promotion_category

      t.timestamps null: false
    end
  end
end
