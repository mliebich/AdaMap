class CreateNodes < ActiveRecord::Migration[7.0]
  def change
    create_table :nodes do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.integer :status
      t.integer :level

      t.timestamps
    end
  end
end
