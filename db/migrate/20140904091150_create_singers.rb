class CreateSingers < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.integer :age

      t.timestamps
    end
  end
end
