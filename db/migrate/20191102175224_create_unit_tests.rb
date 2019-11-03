class CreateUnitTests < ActiveRecord::Migration[5.2]
  def change
    create_table :unit_tests do |t|
      t.integer :mark
      t.references :student, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
