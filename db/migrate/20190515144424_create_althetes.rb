class CreateAlthetes < ActiveRecord::Migration[5.2]
  def change
    create_table :althetes do |t|
      t.string :first_name
      t.string :last_name
      t.string :eye_color
      t.string :hair_color
      t.integer :age
      t.string :gender
      t.string :mortality

      t.timestamps
    end
  end
end
