class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  # validates :photo, si empty qalors tu execute tel methode


  # def la_methode
  #   self.photo.url = url de tq photo
  # end
end
