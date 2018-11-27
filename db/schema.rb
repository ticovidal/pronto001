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

ActiveRecord::Schema.define(version: 2018_11_27_103821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.boolean "team"
    t.string "technic"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_industries_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "cpf"
    t.string "phone"
    t.string "cellphone"
    t.string "street"
    t.integer "number"
    t.string "compl"
    t.string "neighbor"
    t.string "city"
    t.string "country"
    t.string "company"
    t.string "social"
    t.string "cnpj"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "end"
    t.bigint "category_id"
    t.bigint "industry_id"
    t.boolean "visibility"
    t.string "mincost"
    t.string "maxcost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_projects_on_category_id"
    t.index ["industry_id"], name: "index_projects_on_industry_id"
  end

  create_table "proposes", force: :cascade do |t|
    t.text "description"
    t.string "value"
    t.bigint "provider_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_proposes_on_project_id"
    t.index ["provider_id"], name: "index_proposes_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_providers_on_profile_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

  create_table "subctegories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subctegories_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.integer "approved"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "industries", "profiles"
  add_foreign_key "profiles", "users"
  add_foreign_key "projects", "categories"
  add_foreign_key "projects", "industries"
  add_foreign_key "proposes", "projects"
  add_foreign_key "proposes", "providers"
  add_foreign_key "providers", "profiles"
  add_foreign_key "subcategories", "categories"
  add_foreign_key "subctegories", "categories"
end
