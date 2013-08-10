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

ActiveRecord::Schema.define(:version => 20130806134430) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id",                :null => false
    t.string   "title",                      :null => false
    t.integer  "weight",      :default => 0, :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"
  add_index "answers", ["weight"], :name => "index_answers_on_weight"

  create_table "basic_profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "maiden_name"
    t.string   "formatted_name"
    t.string   "headline"
    t.string   "location"
    t.string   "industry"
    t.text     "summary"
    t.string   "specialties"
    t.string   "picture_url"
    t.string   "public_profile_url"
    t.integer  "candidate_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "candidates", :force => true do |t|
    t.integer  "available_in"
    t.string   "contact_no"
    t.string   "name"
    t.string   "salary_expectation"
    t.string   "skype_name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "ancestry"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categories", ["ancestry"], :name => "index_categories_on_ancestry"

  create_table "educations", :force => true do |t|
    t.string   "school_name"
    t.string   "field_of_study"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "degree"
    t.string   "activities"
    t.string   "notes"
    t.integer  "full_profile_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "employers", :force => true do |t|
    t.string   "company_name"
    t.string   "website"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "exams", :force => true do |t|
    t.integer  "category_id",                  :null => false
    t.integer  "vendor_id",                    :null => false
    t.string   "title",                        :null => false
    t.string   "number",                       :null => false
    t.string   "version",     :default => "1", :null => false
    t.integer  "pass_score",  :default => 600, :null => false
    t.integer  "time_limit",  :default => 120, :null => false
    t.string   "description"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "exams", ["category_id", "vendor_id"], :name => "index_exams_on_category_id_and_vendor_id"

  create_table "full_profiles", :force => true do |t|
    t.string   "associations"
    t.string   "honors"
    t.string   "interests"
    t.integer  "candidate_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "linkedin_oauth_settings", :force => true do |t|
    t.string   "atoken"
    t.string   "asecret"
    t.integer  "candidate_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "positions", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "is_current"
    t.string   "company"
    t.integer  "full_profile_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "type_id",                       :null => false
    t.integer  "section_id"
    t.string   "title",                         :null => false
    t.integer  "difficult",   :default => 5,    :null => false
    t.boolean  "allow_mix",   :default => true, :null => false
    t.string   "explanation"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "questions", ["section_id"], :name => "index_questions_on_section_id"
  add_index "questions", ["type_id"], :name => "index_questions_on_type_id"

  create_table "results", :force => true do |t|
    t.string  "session_id"
    t.integer "user_id"
    t.integer "exam_id"
    t.integer "question_id"
    t.integer "try"
    t.string  "answer"
    t.integer "weight"
    t.integer "score"
  end

  add_index "results", ["exam_id"], :name => "index_results_on_exam_id"
  add_index "results", ["question_id"], :name => "index_results_on_question_id"
  add_index "results", ["score"], :name => "index_results_on_score"
  add_index "results", ["session_id"], :name => "index_results_on_session_id"
  add_index "results", ["try"], :name => "index_results_on_try"
  add_index "results", ["user_id"], :name => "index_results_on_user_id"
  add_index "results", ["weight"], :name => "index_results_on_weight"

  create_table "sections", :force => true do |t|
    t.integer  "exam_id",    :null => false
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sections", ["exam_id"], :name => "index_sections_on_exam_id"

  create_table "types", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
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
    t.string   "profileable_type"
    t.integer  "profileable_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vendors", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
