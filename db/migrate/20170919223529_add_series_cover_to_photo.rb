class AddSeriesCoverToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :series_cover, :boolean
  end
end
