class ChangeSeriesToInt < ActiveRecord::Migration[5.1]
  def change
  	change_column :photos, :series, :integer
  end
end
