class AddPicturesToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :pictures, :string
  end
end
