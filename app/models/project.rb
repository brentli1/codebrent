class Project < ActiveRecord::Base
  has_many :project_categories
  has_many :categories, through: :project_categories
end
