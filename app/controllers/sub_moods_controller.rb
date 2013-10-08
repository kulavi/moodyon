class SubMoodsController < ApplicationController
    before_filter :authenticate_user!
    before_filter :is_admin?, :except =>  [:index]
  
  # GET /sub_moods
  # GET /sub_moods.json
  def index
    @sub_moods = SubMood.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sub_moods }
    end
  end

  # GET /sub_moods/1
  # GET /sub_moods/1.json
  def show
    @sub_mood = SubMood.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sub_mood }
    end
  end

  # GET /sub_moods/new
  # GET /sub_moods/new.json
  def new
    @sub_mood = SubMood.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sub_mood }
    end
  end

  # GET /sub_moods/1/edit
  def edit
    @sub_mood = SubMood.find(params[:id])
  end

  # POST /sub_moods
  # POST /sub_moods.json
  def create
    @sub_mood = SubMood.new(params[:sub_mood])

    respond_to do |format|
      if @sub_mood.save
        format.html { redirect_to @sub_mood, notice: 'Sub mood was successfully created.' }
        format.json { render json: @sub_mood, status: :created, location: @sub_mood }
      else
        format.html { render action: "new" }
        format.json { render json: @sub_mood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sub_moods/1
  # PUT /sub_moods/1.json
  def update
    @sub_mood = SubMood.find(params[:id])

    respond_to do |format|
      if @sub_mood.update_attributes(params[:sub_mood])
        format.html { redirect_to @sub_mood, notice: 'Sub mood was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sub_mood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_moods/1
  # DELETE /sub_moods/1.json
  def destroy
    @sub_mood = SubMood.find(params[:id])
    @sub_mood.destroy

    respond_to do |format|
      format.html { redirect_to sub_moods_url }
      format.json { head :no_content }
    end
  end
end
