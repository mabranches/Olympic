class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.float :value
      t.integer :lock_version
      t.belongs_to :athlete, index: true, foreign_key: true
      t.belongs_to :competition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
