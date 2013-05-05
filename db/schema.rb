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

ActiveRecord::Schema.define(:version => 20121031024849) do

  create_table "apply_colleages", :force => true do |t|
    t.string   "colleage_name"
    t.integer  "ranking"
    t.integer  "score"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "channel_categories", :force => true do |t|
    t.string   "category_name"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "channel_infos", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "channel_category_id"
    t.string   "name"
  end

  create_table "channel_infos_tags", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "channel_info_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "character_types", :force => true do |t|
    t.string   "character_name"
    t.text     "description"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "common_districts", :force => true do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "usetype"
    t.integer  "upid"
    t.integer  "displayorder"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "exam_details", :force => true do |t|
    t.integer  "exam_id"
    t.integer  "listening"
    t.integer  "reading"
    t.integer  "writing"
    t.integer  "oral"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exam_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "exams", :force => true do |t|
    t.integer  "exam_type_id"
    t.integer  "info_id"
    t.datetime "exam_time"
    t.integer  "total_score"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "info_notes", :force => true do |t|
    t.integer  "cc_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "info_id"
  end

  create_table "infos", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "cellphone"
    t.string   "grade"
    t.string   "current_school"
    t.string   "decision_power"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "father_phone"
    t.string   "mother_phone"
    t.string   "core_question"
    t.text     "core_question_answer"
    t.integer  "province"
    t.integer  "city"
    t.integer  "district"
    t.integer  "expect_score"
    t.string   "expect_major"
    t.integer  "is_examed"
    t.integer  "is_trained"
    t.string   "expect_colleage_ranking"
    t.integer  "apply_colleage_id"
    t.integer  "user_id"
    t.integer  "character_type_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "channel_info_id"
    t.integer  "exam_type_id"
    t.integer  "gender"
    t.integer  "admission_score"
    t.integer  "cc_id"
    t.integer  "is_signed"
    t.datetime "signed_time"
    t.integer  "signed_user_id"
    t.string   "email"
    t.string   "mother_email"
    t.string   "father_email"
    t.integer  "expect_exam"
    t.integer  "expect_listening_score"
    t.integer  "expect_reading_score"
    t.integer  "expect_writing_score"
    t.integer  "expect_oral_score"
    t.integer  "channel_category_id"
    t.integer  "source"
    t.integer  "is_validate"
    t.integer  "call_id"
    t.text     "not_validate_reasion"
  end

  create_table "invations", :force => true do |t|
    t.integer  "info_id"
    t.integer  "user_id"
    t.datetime "invit_time"
    t.datetime "come_time"
    t.integer  "status"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "role_id"
    t.integer  "confirm_user_id"
    t.integer  "cc_id"
  end

  create_table "nsfms", :force => true do |t|
    t.integer  "user_id"
    t.integer  "stu_id"
    t.datetime "date_application"
    t.integer  "status"
    t.string   "name"
    t.integer  "age"
    t.string   "school"
    t.string   "grade"
    t.integer  "goal_score"
    t.string   "learn_days"
    t.integer  "fee"
    t.text     "previous_marks_exams"
    t.integer  "study_days"
    t.integer  "application_fee"
    t.datetime "forcast_1st_date"
    t.integer  "forcast_1st_fee"
    t.datetime "actual_1st_date"
    t.datetime "forcast_2nd_date"
    t.integer  "forcast_2nd_fee"
    t.datetime "actual_2nd_date"
    t.integer  "actual_2nd_fee"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "actual_1st_fee"
  end

  create_table "nssrs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "stu_id"
    t.datetime "consult_date"
    t.string   "name"
    t.integer  "age"
    t.string   "school"
    t.string   "grade"
    t.integer  "score_goal"
    t.datetime "exam_date"
    t.integer  "study_days"
    t.integer  "fee"
    t.text     "privious_marks_dates"
    t.text     "no_signup_reason"
    t.integer  "forcast_rec_1st_fee"
    t.datetime "actual_rec_1st_date"
    t.integer  "actual_rec_1st_fee"
    t.datetime "forcast_rec_2nd_date"
    t.integer  "forcast_rec_2nd_fee"
    t.datetime "actual_re_2nd_date"
    t.integer  "actual_rec_2nd_fee"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "oscfs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "stu_id"
    t.string   "name"
    t.integer  "gender"
    t.string   "school"
    t.integer  "goal_score"
    t.text     "previous_marks_exams"
    t.string   "learn_subject"
    t.string   "learn_time"
    t.text     "learn_remark_pm"
    t.string   "learn_remark_tearcher"
    t.integer  "post_class_score"
    t.integer  "mock_score"
    t.datetime "comm_date"
    t.text     "comm_content"
    t.string   "comm_effect"
    t.datetime "forcast_come_time"
    t.integer  "forcast_fee"
    t.integer  "actual_fee"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.datetime "actual_come_date"
    t.datetime "actual_come_time"
  end

  create_table "permissions", :force => true do |t|
    t.string "name"
    t.string "description"
    t.string "action"
    t.string "subject_class"
    t.string "subject_id"
  end

  create_table "records", :force => true do |t|
    t.integer  "session_id"
    t.string   "quesion"
    t.text     "answer"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "content"
    t.integer  "is_me"
  end

  create_table "roles", :force => true do |t|
    t.string   "rolename",   :default => "", :null => false
    t.string   "roledesc",   :default => ""
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "roles", ["rolename"], :name => "index_roles_on_rolename", :unique => true

  create_table "roles_permissions", :force => true do |t|
    t.integer "role_id"
    t.integer "permission_id"
  end

  create_table "session_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sessions", :force => true do |t|
    t.integer  "session_type_id"
    t.integer  "user_id"
    t.integer  "info_id"
    t.datetime "session_time"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "training_experiences", :force => true do |t|
    t.integer  "user_id"
    t.integer  "info_id"
    t.datetime "start_time"
    t.string   "total_time"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "exam_type_id"
    t.datetime "finish_time"
  end

  create_table "users", :force => true do |t|
    t.string   "username",               :default => "", :null => false
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "ccm_id"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "users_roles", :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

end
