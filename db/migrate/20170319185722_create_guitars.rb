class CreateGuitars < ActiveRecord::Migration[5.0]
  def change
    create_table :guitars do |t|
      t.string :name
      t.integer :strings
      t.text :description

      t.timestamps
    end
  end
end
