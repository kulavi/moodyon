class UserSubMood < ActiveRecord::Base
  attr_accessible :reason_id, :event_id, :sub_mood_id, :user_id
  
  belongs_to :user
  belongs_to :sub_mood
  belongs_to :event
  belongs_to :reason
  
    
end
