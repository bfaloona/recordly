class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs, dependent: :destroy
  validates_uniqueness_of :name
end
