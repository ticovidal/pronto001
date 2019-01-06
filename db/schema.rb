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

ActiveRecord::Schema.define(version: 2019_01_06_205638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adresses", force: :cascade do |t|
    t.string "street"
    t.string "number"
    t.string "compl"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_adresses_on_profile_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enterprises", force: :cascade do |t|
    t.string "company"
    t.string "social"
    t.string "cnpj"
    t.string "enterpriseable_type"
    t.bigint "enterpriseable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enterpriseable_type", "enterpriseable_id"], name: "index_enterprises_on_enterpriseable_type_and_enterpriseable_id"
  end

  create_table "ind_categorizations", force: :cascade do |t|
    t.bigint "industries_id"
    t.bigint "categories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_ind_categorizations_on_categories_id"
    t.index ["industries_id"], name: "index_ind_categorizations_on_industries_id"
  end

  create_table "indcategories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indcats", force: :cascade do |t|
    t.bigint "industry_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_indcats_on_category_id"
    t.index ["industry_id"], name: "index_indcats_on_industry_id"
  end

  create_table "industries", force: :cascade do |t|
    t.boolean "team"
    t.string "technic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "indcategory_id"
    t.index ["category_id"], name: "index_industries_on_category_id"
    t.index ["indcategory_id"], name: "index_industries_on_indcategory_id"
  end

  create_table "linkcats", force: :cascade do |t|
    t.bigint "provider_id"
    t.bigint "subcategory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_linkcats_on_provider_id"
    t.index ["subcategory_id"], name: "index_linkcats_on_subcategory_id"
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
    t.string "profileable_type"
    t.integer "profileable_id"
    t.index ["profileable_id"], name: "index_profiles_on_profileable_id"
    t.index ["profileable_type"], name: "index_profiles_on_profileable_type"
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
    t.bigint "subcategory_id"
    t.integer "dependency_id"
    t.boolean "has_dependency"
    t.index ["category_id"], name: "index_projects_on_category_id"
    t.index ["industry_id"], name: "index_projects_on_industry_id"
    t.index ["subcategory_id"], name: "index_projects_on_subcategory_id"
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

  create_table "prov_categorizations", force: :cascade do |t|
    t.bigint "providers_id"
    t.bigint "categories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_prov_categorizations_on_categories_id"
    t.index ["providers_id"], name: "index_prov_categorizations_on_providers_id"
  end

  create_table "providers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers_subcategories", id: false, force: :cascade do |t|
    t.bigint "provider_id", null: false
    t.bigint "subcategory_id", null: false
    t.index ["provider_id", "subcategory_id"], name: "index_providers_subcategories_on_provider_id_and_subcategory_id"
    t.index ["subcategory_id", "provider_id"], name: "index_providers_subcategories_on_subcategory_id_and_provider_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

  create_table "subcats", force: :cascade do |t|
    t.bigint "subcategory_id"
    t.bigint "provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_subcats_on_provider_id"
    t.index ["subcategory_id"], name: "index_subcats_on_subcategory_id"
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

  add_foreign_key "adresses", "profiles"
  add_foreign_key "ind_categorizations", "categories", column: "categories_id"
  add_foreign_key "ind_categorizations", "industries", column: "industries_id"
  add_foreign_key "indcats", "categories"
  add_foreign_key "indcats", "industries"
  add_foreign_key "industries", "categories"
  add_foreign_key "industries", "indcategories"
  add_foreign_key "linkcats", "providers"
  add_foreign_key "linkcats", "subcategories"
  add_foreign_key "profiles", "users"
  add_foreign_key "projects", "categories"
  add_foreign_key "projects", "industries"
  add_foreign_key "projects", "subcategories"
  add_foreign_key "proposes", "projects"
  add_foreign_key "proposes", "providers"
  add_foreign_key "prov_categorizations", "categories", column: "categories_id"
  add_foreign_key "prov_categorizations", "providers", column: "providers_id"
  add_foreign_key "subcategories", "categories"
  add_foreign_key "subcats", "providers"
  add_foreign_key "subcats", "subcategories"
  add_foreign_key "subctegories", "categories"
end
