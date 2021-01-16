class RemoveNameFromDoses < ActiveRecord::Migration[6.0]
  def change
    remove_column :doses, :name, :string
  end
end
