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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150903002822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",    default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree

  create_table "applications", force: true do |t|
    t.integer  "business_id"
    t.integer  "user_id"
    t.integer  "job_id"
    t.integer  "cv_id"
    t.string   "date_application"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "applications", ["business_id"], name: "index_applications_on_business_id", using: :btree
  add_index "applications", ["cv_id"], name: "index_applications_on_cv_id", using: :btree
  add_index "applications", ["job_id"], name: "index_applications_on_job_id", using: :btree
  add_index "applications", ["user_id"], name: "index_applications_on_user_id", using: :btree

  create_table "areas", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "businesses", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "business_name"
    t.string   "rfc"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.string   "Postal_Code"
    t.string   "address"
    t.string   "sector"
    t.string   "Number_of_employees"
    t.string   "business_type"
    t.string   "business_description"
    t.string   "web"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "verificated"
    t.string   "contactname"
    t.string   "contactemail"
    t.string   "phone1"
    t.string   "phone2"
  end

  add_index "businesses", ["city_id"], name: "index_businesses_on_city_id", using: :btree
  add_index "businesses", ["country_id"], name: "index_businesses_on_country_id", using: :btree
  add_index "businesses", ["state_id"], name: "index_businesses_on_state_id", using: :btree
  add_index "businesses", ["user_id"], name: "index_businesses_on_user_id", using: :btree

  create_table "busquedas", force: true do |t|
    t.string   "titulo"
    t.string   "nombre"
    t.string   "edad"
    t.string   "telefono"
    t.string   "telefono1"
    t.string   "photo"
    t.string   "email"
    t.string   "guid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "certificates", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "guid"
  end

  create_table "cities", force: true do |t|
    t.integer  "state_id"
    t.integer  "country_id"
    t.string   "name"
    t.string   "code_city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree
  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "contacts", force: true do |t|
    t.integer  "business_id"
    t.string   "name"
    t.string   "last_name"
    t.string   "office"
    t.string   "email"
    t.string   "mobile_phone"
    t.string   "fixed_phone"
    t.string   "office_phone"
    t.string   "ext"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["business_id"], name: "index_contacts_on_business_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "code_country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "guid"
  end

  create_table "cvs", force: true do |t|
    t.integer  "user_id"
    t.integer  "idioma_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "guid"
    t.string   "countclick"
  end

  add_index "cvs", ["idioma_id"], name: "index_cvs_on_idioma_id", using: :btree
  add_index "cvs", ["user_id"], name: "index_cvs_on_user_id", using: :btree

  create_table "dgs", force: true do |t|
    t.string   "name"
    t.string   "datebirthday"
    t.string   "age"
    t.string   "address"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.text     "photo"
    t.string   "guid"
  end

  create_table "educations", force: true do |t|
    t.string   "school"
    t.string   "yearInitial"
    t.string   "yearFinal"
    t.boolean  "graduated"
    t.string   "DocumentReceived"
    t.string   "average"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "level"
    t.integer  "user_id"
    t.string   "guid"
    t.string   "title"
  end

  create_table "empresas", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empresas", ["email"], name: "index_empresas_on_email", unique: true, using: :btree
  add_index "empresas", ["reset_password_token"], name: "index_empresas_on_reset_password_token", unique: true, using: :btree

  create_table "experiences", force: true do |t|
    t.string   "datei"
    t.string   "datef"
    t.string   "business"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "Puesto"
    t.text     "logros"
    t.string   "guid"
  end

  create_table "favoritos", force: true do |t|
    t.string   "name"
    t.string   "guid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "idiomas", force: true do |t|
    t.string   "idioma"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.integer  "business_id"
    t.integer  "user_id"
    t.string   "name"
    t.integer  "tag_id"
    t.integer  "area_id"
    t.string   "description"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.string   "day_type"
    t.string   "type_contract"
    t.string   "salary"
    t.string   "date_recruitment"
    t.string   "number_jobs"
    t.string   "year_experience"
    t.string   "minimum_age"
    t.string   "maximum_age"
    t.string   "language"
    t.string   "percentage_language"
    t.string   "ofimatica"
    t.boolean  "availability_travel"
    t.boolean  "change_home"
    t.boolean  "disability"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.integer  "countclicks"
    t.string   "profession"
    t.string   "provision"
    t.text     "tools"
    t.text     "knowledge"
  end

  add_index "jobs", ["area_id"], name: "index_jobs_on_area_id", using: :btree
  add_index "jobs", ["business_id"], name: "index_jobs_on_business_id", using: :btree
  add_index "jobs", ["city_id"], name: "index_jobs_on_city_id", using: :btree
  add_index "jobs", ["country_id"], name: "index_jobs_on_country_id", using: :btree
  add_index "jobs", ["state_id"], name: "index_jobs_on_state_id", using: :btree
  add_index "jobs", ["tag_id"], name: "index_jobs_on_tag_id", using: :btree
  add_index "jobs", ["user_id"], name: "index_jobs_on_user_id", using: :btree

  create_table "languages", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "read"
    t.decimal  "write"
    t.decimal  "spoken"
    t.string   "guid"
  end

  create_table "my_tags", force: true do |t|
    t.integer  "cv_id"
    t.integer  "idioma_id"
    t.integer  "user_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "guid"
    t.string   "name"
  end

  add_index "my_tags", ["cv_id"], name: "index_my_tags_on_cv_id", using: :btree
  add_index "my_tags", ["idioma_id"], name: "index_my_tags_on_idioma_id", using: :btree
  add_index "my_tags", ["tag_id"], name: "index_my_tags_on_tag_id", using: :btree
  add_index "my_tags", ["user_id"], name: "index_my_tags_on_user_id", using: :btree

  create_table "objetivos", force: true do |t|
    t.integer  "cv_id"
    t.integer  "idioma_id"
    t.integer  "user_id"
    t.string   "objetivos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "objetivos", ["cv_id"], name: "index_objetivos_on_cv_id", using: :btree
  add_index "objetivos", ["idioma_id"], name: "index_objetivos_on_idioma_id", using: :btree
  add_index "objetivos", ["user_id"], name: "index_objetivos_on_user_id", using: :btree

  create_table "states", force: true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.string   "code_state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id", using: :btree

  create_table "tags", force: true do |t|
    t.integer  "idioma_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["idioma_id"], name: "index_tags_on_idioma_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vacantes", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "business"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
