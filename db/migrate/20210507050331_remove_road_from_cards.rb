class RemoveRoadFromCards < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :road, :string
  end
end
