class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.belongs_to :category, index: true

      t.string :title
      t.string :description
      t.string :email
      t.string :slug
      t.string :randurl

      t.timestamps(null: false)
    end

  end
end
