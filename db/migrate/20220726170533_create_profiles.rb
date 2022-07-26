class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.text :biography
      t.string :title
      t.text :focus
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
