class CreateBiographies < ActiveRecord::Migration[7.0]
  def change
    create_table :biographies do |t|
      t.text :history
      t.text :job_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
