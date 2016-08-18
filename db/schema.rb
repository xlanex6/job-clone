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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160818163037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.date     "accepted_date"
    t.date     "refused_date"
    t.integer  "job_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["job_id"], name: "index_applications_on_job_id", using: :btree
    t.index ["user_id"], name: "index_applications_on_user_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.date     "start_time"
    t.date     "end_time"
    t.string   "address"
    t.integer  "skill_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "latitude"
    t.float    "longitude"
    t.index ["skill_id"], name: "index_jobs_on_skill_id", using: :btree
    t.index ["user_id"], name: "index_jobs_on_user_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "title"
    t.text     "bio"
    t.string   "avatar"
    t.string   "cv"
    t.string   "website"
    t.string   "company"
    t.integer  "skill_id"
    t.string   "user_type"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "photo"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["skill_id"], name: "index_users_on_skill_id", using: :btree
  end

  add_foreign_key "applications", "jobs"
  add_foreign_key "applications", "users"
  add_foreign_key "jobs", "skills"
  add_foreign_key "jobs", "users"
  add_foreign_key "users", "skills"
end
