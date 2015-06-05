class RemoveInfoFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :info, :text
    add_column :profiles, :info, :string
  end
end
