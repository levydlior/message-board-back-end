class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :user_name
      t.string :avatar_url
      t.integer :user_id
      t.timestamps
    end
  end
end
