class CreateAdviceTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :advice_tweets do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
