  class HomeController < ApplicationController
      before_filter :authenticate_user!
      before_filter :is_admin?, :except =>  [:index, :moods_for_selection,:show_sub_moods, :profile, :edit_profile, :city_for_graph, :update_state_select, :update_city_select, :enter_sub_mood]
    
    def index
    @users = User.all
    @profiles = Profile.all
    #@city = City.all
    @moods = Mood.order 'name'
    @sub_moods = SubMood.dep_sub_mood(params[:id])
      
    end

  def city_for_graph
    #debugger
    users = current_user.mood_according_city(params[:id])
    moods = users.collect.each {|user| user.sub_mood.mood.name}
    render :partial => "home/city_for_graph", :locals => {:users => users, :moods => moods }
  end
    
    def moods_for_selection
      @moods = Mood.ordered_mood
      respond_to do |format|
	     format.js
      end
    end
      
    def update_state_select  
      states = State.where(:country_id=>params[:id]).order(:name) unless params[:id].blank?
      render :partial => "states", :locals => { :states => states } 
    end 
    
    def update_city_select
      cities = City.where(:state_id=>params[:id]).order(:name) unless params[:id].blank?
      render :partial => "cities", :locals => { :cities => cities }
    end

    def edit_profile
      @profile = current_user.profile
      @gender = ["Male", "Female"]
      @marital_status = ["Single", "Married", "Engaged", "Complicated", 
                         "Open Relationship",	"Widowed", "Seperated", "Dicorced"]
    end

    def profile
      @profile = current_user.profile
  
      if current_user.profile.present?
      	if current_user.profile.update_attributes(params[:profile])
      	  flash[:notice] = "Profile saved successfully."
      	  #redirect_to "/show_profile/#{current_user.id}"
      	  redirect_to "/"
      	else
      	  flash[:error] = "Something went wrong."
      	  redirect_to :back
      	end
      end
    end
    
    def enter_sub_mood
      @user_sub_mood = current_user.user_sub_moods.new(params[:user_sub_mood])
      respond_to do |format|
    	if params[:user_sub_mood].present?
    	  if @user_sub_mood.save
    	    
    	    format.html { redirect_to "/", notice: "Your are in #{@user_sub_mood.sub_mood.name} mood now." }
    	    format.json { render json: "/", status: :created, location: @sub_mood }
    	  else
    	    format.html { render action: "new" }
    	    format.json { render json: @user_sub_mood.errors, status: :unprocessable_entity }
    	  end
    	end
      end
    end    
    
    
      
  end
