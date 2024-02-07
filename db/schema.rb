# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_02_05_173504) do
  create_table "victims", force: :cascade do |t|
    t.string "VictimsName"
    t.string "VictimsAge"
    t.string "VictimsGender"
    t.string "VictimsRace"
    t.string "url_of_image"
    t.date "date_of_incident"
    t.string "street_address_of_incident"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "county"
    t.string "Agency_responsible_for_death"
    t.text "A_brief_description_of_the_circumstances"
    t.string "Criminal_charges"
    t.string "Link_to_news_article_or_photo_of_official_document"
    t.boolean "symptoms_of_mental_illness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
