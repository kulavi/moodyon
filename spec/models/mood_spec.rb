require 'spec_helper'
require 'carrierwave/test/matchers'

describe Mood do
  include CarrierWave::Test::Matchers
  
  before(:each) do
    MoodPictureUploader.enable_processing = true
    @uploader = MoodPictureUploader.new(@mood, :mood_picture)
    @mood_save = FactoryGirl.create(:mood)
    @mood_save.save!
    @uploader.store!#(File.open("public/uploads/apple-touch-icon-114x114.png")) 
  end
  
  after(:each) do
    MoodPictureUploader.enable_processing = false
    @uploader.remove!
  end
  
  it "should have some name and description" do
    @mood_save.name = "some name"
    @mood_save.description = "some description"
    
    @mood_save.name.should == "some name"
    @mood_save.description == "some description"
  end
  
end
