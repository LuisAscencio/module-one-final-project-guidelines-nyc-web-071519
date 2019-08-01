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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20190731001452) do
=======
ActiveRecord::Schema.define(version: 20190801140618) do
>>>>>>> 01e07bd762431d33dd91f5563cb23e80b9016b7b

  create_table "astronauts", force: :cascade do |t|
    t.string  "name"
    t.integer "age"
    t.string  "favorite_rocket"
  end

  create_table "launches", force: :cascade do |t|
    t.integer "user_id"
    t.integer "rocket_id"
    t.string  "mission_name"
    t.boolean "upcoming"
    t.string  "launch_date"
    t.string  "rocket_name"
    t.string  "payload"
    t.string  "launch_site"
    t.string  "launch_state"
    t.boolean "launch_success"
  end

  create_table "rockets", force: :cascade do |t|
    t.string  "rocket_name"
    t.integer "cost"
    t.string  "first_flight"
    t.string  "country"
    t.integer "height"
    t.integer "diameter"
    t.integer "mass"
    t.string  "description"
  end

  create_table "searches", force: :cascade do |t|
    t.integer "astronaut_id"
    t.string  "future_launch_date"
    t.string  "future_launch_site"
    t.string  "favorite_rocket"
<<<<<<< HEAD
=======
    t.string  "name"
>>>>>>> 01e07bd762431d33dd91f5563cb23e80b9016b7b
  end

end
