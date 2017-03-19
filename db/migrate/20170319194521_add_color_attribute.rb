class AddColorAttribute < ActiveRecord::Migration[5.0]
  def change
    add_column :guitars, :color, :string
  end
end
