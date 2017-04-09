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

ActiveRecord::Schema.define(version: 20170409112619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communications", force: :cascade do |t|
    t.date     "c_date"
    t.string   "c_method"
    t.string   "c_subject"
    t.string   "c_details"
    t.string   "c_link"
    t.string   "c_notes"
    t.integer  "user_id"
    t.integer  "contact_ref_id"
    t.string   "contact_ref_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_communications_on_user_id", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "url"
    t.string   "note"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "user_id"
    t.boolean  "action_required"
    t.boolean  "pending",         default: false
    t.index ["user_id"], name: "index_companies_on_user_id", using: :btree
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "full_name"
    t.string   "nickname"
    t.string   "company_name"
    t.string   "job_title"
    t.string   "email"
    t.string   "phone"
    t.string   "website"
    t.string   "notes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "company_ref_id"
    t.integer  "job_ref_id"
    t.integer  "reminder_ref_id"
    t.integer  "document_ref_id"
    t.index ["user_id"], name: "index_contacts_on_user_id", using: :btree
  end

  create_table "documents", force: :cascade do |t|
    t.string   "doctype"
    t.string   "doctext"
    t.string   "docurl"
    t.integer  "company_ref_id"
    t.string   "company_name"
    t.integer  "contact_ref_id"
    t.string   "contact_ref_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.date     "docdate"
    t.string   "docsubject"
    t.integer  "job_ref_id"
    t.index ["user_id"], name: "index_documents_on_user_id", using: :btree
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.date     "posting_date"
    t.string   "post_url"
    t.string   "salary"
    t.string   "responsibility"
    t.string   "requirement"
    t.date     "deadline"
    t.boolean  "action_required", default: false
    t.boolean  "pending",         default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "user_id"
    t.string   "comment"
    t.integer  "company_ref_id"
    t.string   "company_name"
    t.index ["user_id"], name: "index_jobs_on_user_id", using: :btree
  end

  create_table "reminders", force: :cascade do |t|
    t.string   "reminder_type"
    t.string   "reminder_subject"
    t.string   "reminder_details"
    t.date     "reminder_date"
    t.boolean  "reminder_archive"
    t.date     "reminder_compl_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "company_ref_id"
    t.integer  "job_ref_id"
    t.string   "company_name"
    t.string   "job_title"
    t.integer  "contact_ref_id"
    t.string   "contact_name"
    t.index ["user_id"], name: "index_reminders_on_user_id", using: :btree
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "status_type"
    t.string   "subject"
    t.string   "details"
    t.date     "due_date"
    t.boolean  "archive"
    t.date     "date_completed"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.integer  "company_id"
    t.integer  "job_id"
    t.index ["company_id"], name: "index_statuses_on_company_id", using: :btree
    t.index ["job_id"], name: "index_statuses_on_job_id", using: :btree
    t.index ["user_id"], name: "index_statuses_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "communications", "users"
  add_foreign_key "companies", "users"
  add_foreign_key "contacts", "users"
  add_foreign_key "documents", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "jobs", "users"
  add_foreign_key "reminders", "users"
  add_foreign_key "statuses", "companies"
  add_foreign_key "statuses", "jobs"
  add_foreign_key "statuses", "users"
end
