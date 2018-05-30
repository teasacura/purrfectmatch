class AddColumnImageUrlToAdoptersAndCats < ActiveRecord::Migration[5.2]
  def change
    add_column :adopters, :image_url, :string
    add_column :cats, :image_url, :string
  end
end
