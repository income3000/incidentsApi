class CreateVictims < ActiveRecord::Migration[7.0]
  def change
    create_table :victims do |t|
      t.string :VictimsName
      t.string :VictimsAge
      t.string :VictimsGender
      t.string :VictimsRace
      t.string :url_of_image
      t.date :date_of_incident
      t.string :street_address_of_incident
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :county
      t.string :Agency_responsible_for_death
      t.text :A_brief_description_of_the_circumstances
      t.string :Criminal_charges
      t.string :Link_to_news_article_or_photo_of_official_document
      t.boolean :symptoms_of_mental_illness

      t.timestamps
    end
  end
end
