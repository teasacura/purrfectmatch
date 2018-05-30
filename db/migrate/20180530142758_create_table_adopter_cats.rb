class CreateTableAdopterCats < ActiveRecord::Migration[5.2]
  def change
    create_table :adopter_cats do |t|
      t.belongs_to :adopter
      t.belongs_to :cat
    end
  end
end
