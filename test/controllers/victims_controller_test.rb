require "test_helper"

class VictimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @victim = victims(:one)
  end

  test "should get index" do
    get victims_url, as: :json
    assert_response :success
  end

  test "should create victim" do
    assert_difference("Victim.count") do
      post victims_url, params: { victim: { A_brief_description_of_the_circumstances: @victim.A_brief_description_of_the_circumstances, Agency_responsible_for_death: @victim.Agency_responsible_for_death, Criminal_charges: @victim.Criminal_charges, Link_to_news_article_or_photo_of_official_document: @victim.Link_to_news_article_or_photo_of_official_document, VictimsAge: @victim.VictimsAge, VictimsGender: @victim.VictimsGender, VictimsName: @victim.VictimsName, VictimsRace: @victim.VictimsRace, city: @victim.city, county: @victim.county, date_of_incident: @victim.date_of_incident, state: @victim.state, street_address_of_incident: @victim.street_address_of_incident, symptoms_of_mental_illness: @victim.symptoms_of_mental_illness, url_of_image: @victim.url_of_image, zipcode: @victim.zipcode } }, as: :json
    end

    assert_response :created
  end

  test "should show victim" do
    get victim_url(@victim), as: :json
    assert_response :success
  end

  test "should update victim" do
    patch victim_url(@victim), params: { victim: { A_brief_description_of_the_circumstances: @victim.A_brief_description_of_the_circumstances, Agency_responsible_for_death: @victim.Agency_responsible_for_death, Criminal_charges: @victim.Criminal_charges, Link_to_news_article_or_photo_of_official_document: @victim.Link_to_news_article_or_photo_of_official_document, VictimsAge: @victim.VictimsAge, VictimsGender: @victim.VictimsGender, VictimsName: @victim.VictimsName, VictimsRace: @victim.VictimsRace, city: @victim.city, county: @victim.county, date_of_incident: @victim.date_of_incident, state: @victim.state, street_address_of_incident: @victim.street_address_of_incident, symptoms_of_mental_illness: @victim.symptoms_of_mental_illness, url_of_image: @victim.url_of_image, zipcode: @victim.zipcode } }, as: :json
    assert_response :success
  end

  test "should destroy victim" do
    assert_difference("Victim.count", -1) do
      delete victim_url(@victim), as: :json
    end

    assert_response :no_content
  end
end
