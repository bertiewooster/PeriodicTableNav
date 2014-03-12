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

ActiveRecord::Schema.define(version: 20140309184131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bases", id: false, force: true do |t|
    t.integer "id",   null: false
    t.text    "base"
  end

  create_table "elements", id: false, force: true do |t|
    t.integer "atomic_num",                                        null: false
    t.text    "symbol"
    t.text    "name"
    t.text    "name_origin"
    t.integer "period"
    t.decimal "atomic_weight"
    t.boolean "atomic_wt_is_mass_number_of_longest_lived_isotope"
    t.decimal "specific_heat_capacity_j_per_gk"
    t.decimal "density_g_per_cm3"
    t.boolean "density_is_estimated"
    t.decimal "melting_point_k"
    t.boolean "melt_is_estimated"
    t.decimal "boiling_point_k"
    t.boolean "boil_is_estimated"
    t.decimal "electronegativity"
    t.decimal "abundance_mg_per_kg"
    t.boolean "abundance_is_upper_limit"
    t.integer "grouplin"
  end

  create_table "orbitals", id: false, force: true do |t|
    t.integer "id",           null: false
    t.integer "n",            null: false
    t.string  "l",  limit: 1
  end

  create_table "orbs", id: false, force: true do |t|
    t.integer "element_id", null: false
    t.integer "orbital_id", null: false
    t.integer "count"
  end

end
