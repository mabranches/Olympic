class CreateAtheletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :name, null: false
      t.integer :sex, null: false
      t.integer :age, null: false
      t.integer :lock_version

      t.timestamps null: false
    end
  end
end
