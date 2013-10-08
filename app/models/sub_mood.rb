class SubMood < ActiveRecord::Base

  
  attr_accessible :description, :name, :sub_mood_picture, :mood_id
  
  belongs_to :mood
  has_many :user_sub_moods
  
  mount_uploader :sub_mood_picture, MoodPictureUploader
  
  validates :mood_id, :presence => true
  validates :name, :presence => true, :uniqueness => true
  validates_format_of :sub_mood_picture, :with => %r{\.(png|jpg|jpeg|bmp)$}i, :message => "file format doesn't match"
  


  def self.dep_sub_mood(mood)
    sub_mood = SubMood.where(:mood_id => mood)
  end
  
end
