class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :anonymous_commentor
      t.references :gossip, foreign_key: true

      t.timestamps
    end
  end
end
