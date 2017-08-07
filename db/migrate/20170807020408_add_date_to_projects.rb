class AddDateToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :complete_date, :date
  end
end
