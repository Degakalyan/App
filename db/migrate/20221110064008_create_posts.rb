class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :date
      t.string :author
      t.string :description
      t.string :tags
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
