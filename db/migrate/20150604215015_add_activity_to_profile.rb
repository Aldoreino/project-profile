class AddActivityToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :activity, :string
  end
end
