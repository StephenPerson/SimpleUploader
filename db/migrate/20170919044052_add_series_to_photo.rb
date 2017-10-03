class AddSeriesToPhoto < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :series, :string
  end
end
