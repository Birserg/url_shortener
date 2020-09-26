class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :url, null: false
      t.string :slug, null: false
      t.integer :clicked, default: 0

      t.timestamps
    end
  end
end
