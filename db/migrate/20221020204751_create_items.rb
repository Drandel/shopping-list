class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :notes
      t.integer :quantity
      t.belongs_to :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
