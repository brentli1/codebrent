class AddLinksToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :github, :string
    add_column :projects, :web_url, :string
  end
end
