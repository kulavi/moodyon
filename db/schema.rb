# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121105132636) do

  create_table "cities", :force => true do |t|
    t.integer  "country_id",               :null => false
    t.integer  "state_id",                 :null => false
    t.string   "name",       :limit => 45, :null => false
    t.float    "latitude",                 :null => false
    t.float    "longitude",                :null => false
    t.string   "timezone",   :limit => 10, :null => false
    t.integer  "dma_id"
    t.string   "county",     :limit => 25
    t.string   "code",       :limit => 4
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "cities", ["name"], :name => "index_cities_on_name"

  create_table "countries", :force => true do |t|
    t.string   "name",                 :limit => 50, :null => false
    t.string   "fips104",              :limit => 2,  :null => false
    t.string   "iso2",                 :limit => 2,  :null => false
    t.string   "iso3",                 :limit => 3,  :null => false
    t.string   "ison",                 :limit => 4,  :null => false
    t.string   "internet",             :limit => 2,  :null => false
    t.string   "capital",              :limit => 25
    t.string   "map_reference",        :limit => 50
    t.string   "nationality_singular", :limit => 35
    t.string   "nationality_plural",   :limit => 35
    t.string   "currency",             :limit => 30
    t.string   "currency_code",        :limit => 3
    t.integer  "population"
    t.string   "title",                :limit => 50
    t.string   "comment"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "moods", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "mood_picture"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "fname"
    t.string   "lname"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "marital_status"
    t.string   "pincode"
    t.string   "mobile_no"
    t.string   "org_name"
    t.string   "designation"
    t.string   "profession"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.string   "profile_picture"
  end

  create_table "reasons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "states", :force => true do |t|
    t.integer  "country_id",               :null => false
    t.string   "name",       :limit => 45, :null => false
    t.string   "code",       :limit => 8,  :null => false
    t.string   "adm1code",   :limit => 4,  :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "sub_moods", :force => true do |t|
    t.integer  "mood_id"
    t.string   "name"
    t.string   "description"
    t.string   "sub_mood_picture"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "sub_moods", ["mood_id"], :name => "index_sub_moods_on_mood_id"

  create_table "user_sub_moods", :force => true do |t|
    t.integer  "user_id"
    t.integer  "sub_mood_id"
    t.integer  "event_id"
    t.integer  "reason_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "about_me"
    t.string   "dob"
    t.string   "hometown"
    t.string   "location"
    t.string   "relationships"
    t.string   "status"
    t.string   "gender"
    t.string   "organisation"
    t.string   "designation"
    t.string   "profession"
    t.string   "facebook_url"
    t.string   "educational_details"
    t.string   "facebook_image"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
