class AddImageToModel < ActiveRecord::Migration[5.0]
  def change
    add_column :guitars, :image, :string
  end
end
