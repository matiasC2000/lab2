class CreateTweet < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.text :texto
      t.references :monster ,foreign_key: true

      t.timestamps
    end
  end
end