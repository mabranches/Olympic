class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name, null: false, index: {unique: true}
      t.string :type, null: false
      t.integer :lock_version
      t.integer :status, null:false, default: 0

      t.timestamps null: false
    end
  end
end
