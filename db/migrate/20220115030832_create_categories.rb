class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :permalink, null: false, unique: true

      t.timestamps
    end
  end
end
