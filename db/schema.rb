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

ActiveRecord::Schema.define(:version => 20130718051448) do

  create_table "landlords", :force => true do |t|
    t.string   "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "landlord_id"
  end

  create_table "properties", :force => true do |t|
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rental_apps", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "propertyaddress"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "property_id"
    t.string   "date_of_birth"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "state_id_number"
    t.string   "state_issued"
    t.string   "current_employer_name"
    t.string   "current_employer_address"
    t.string   "current_employer_phone"
    t.string   "current_employer_length_of_employ"
    t.string   "current_employer_still_employed"
    t.string   "past_employer_name"
    t.string   "past_employer_address"
    t.string   "past_employer_phone"
    t.string   "past_employer_start_date"
    t.string   "past_employer_end_date"
    t.string   "employment_income"
    t.string   "other_income"
    t.string   "smoke"
    t.string   "eviction_history"
    t.string   "criminal_history"
    t.string   "bankruptcy"
    t.text     "comments"
  end

end
