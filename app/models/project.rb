class Project < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_many :project_categories
  has_many :categories, through: :project_categories

  validates :title, presence: true
  validates :body, presence: true
  validates :github, presence: true
  validates :web_url, presence: true
  validates :complete_date, presence: true
  validates :image, presence: { message: "is required." }
  validate :image_size

  private
  def image_size
    if image.size > 5.megabytes
      errors.add(:image, "should be less than 5MB")
    end
  end
end
