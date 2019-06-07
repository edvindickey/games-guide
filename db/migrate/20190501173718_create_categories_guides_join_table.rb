class CreateCategoriesGuidesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_guides, id: false do |t|
  		t.integer :category_id
  		t.integer :guide_id
  	end
    add_index :categories_guides, :category_id
    add_index :categories_guides, :guide_id
  end
end
