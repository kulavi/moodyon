class Mood < ActiveRecord::Base

  attr_accessible :description, :mood_picture, :name
  
  has_many :sub_moods, :dependent => :destroy
    
  mount_uploader :mood_picture, MoodPictureUploader
  

  
  validates :name, :presence => true
  validates_format_of :mood_picture, :with => %r{\.(png|jpg|jpeg|bmp)$}i, :message => "file format doesn't match"



  def self.ordered_mood
    Mood.order 'name'
  end
  
end
