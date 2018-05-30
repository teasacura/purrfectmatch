class CreateTableCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :age
      t.string :description
      t.string :location
      t.string :breed
      t.string :temperament
      t.string :sociability
    end
  end
end
