class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :permalink, null: false, unique: true
      t.integer :reading_time, default: 0, null: false
      t.string :thumbnail_url, default: '', null: false
      t.boolean :published, default: false, null: false
      t.text :content

      t.timestamps
    end
  end
end
