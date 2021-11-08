class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :image_url
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
