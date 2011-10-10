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

ActiveRecord::Schema.define(:version => 20111009130402) do

  create_table "designations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetings", :force => true do |t|
    t.datetime "schedule"
    t.string   "venue"
    t.boolean  "done"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.integer  "from_id"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "minutes", :force => true do |t|
    t.integer  "meeting_id"
    t.text     "body"
    t.boolean  "reviewed"
    t.integer  "reviewed_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipients", :force => true do |t|
    t.integer  "user_id"
    t.integer  "message_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resolutions", :force => true do |t|
    t.string   "subject"
    t.string   "body"
    t.boolean  "passed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uploads", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.string   "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",  :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",  :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",                              :default => "f", :null => false
    t.string   "first_name",                            :default => "f", :null => false
    t.string   "last_name",                             :default => "f", :null => false
    t.integer  "designation_id",                        :default => 1
    t.integer  "dashboard_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
