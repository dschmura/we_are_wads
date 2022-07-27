class CreateQuirks < ActiveRecord::Migration[7.0]
  def change
    create_table :quirks do |t|
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
