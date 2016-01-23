class CreateExpences < ActiveRecord::Migration
  def change
    create_table :expences do |t|
      t.string :name
      t.decimal :price
      t.datetime :create_at

      t.timestamps null: false
    end
  end
end
