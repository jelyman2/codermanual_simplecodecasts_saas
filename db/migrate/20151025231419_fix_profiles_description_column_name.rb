class FixProfilesDescriptionColumnName < ActiveRecord::Migration
  def change
    rename_column :profiles, :decription, :description
  end
end
