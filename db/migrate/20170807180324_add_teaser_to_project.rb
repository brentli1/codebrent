class AddTeaserToProject < ActiveRecord::Migration
  def change
    add_column :projects, :teaser, :text
  end
end
