class AddUrlToDeck < ActiveRecord::Migration[6.1]
  def change
    add_column :decks, :url, :text
  end
end
