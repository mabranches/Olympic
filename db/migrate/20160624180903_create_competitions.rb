class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :type
      t.integer :lock_version
      t.integer :status

      t.timestamps null: false
    end
  end
end
