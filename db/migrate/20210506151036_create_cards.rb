class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :road
      t.integer :number
      t.text :content
      t.text :url
      t.text :summary

      t.timestamps
    end
  end
end
