class CreateIncomeSources < ActiveRecord::Migration[6.1]
  def change
    create_table :income_sources do |t|
      t.decimal :amount, precision: 10, scale: 2, null: false
      t.string :description, null: false
      t.date :available_at
      t.date :received_at
      t.timestamps
    end
  end
end
