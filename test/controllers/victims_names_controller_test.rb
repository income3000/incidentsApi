require "test_helper"

class VictimsNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @victims_name = victims_names(:one)
  end

  test "should get index" do
    get victims_names_url, as: :json
    assert_response :success
  end

  test "should create victims_name" do
    assert_difference("VictimsName.count") do
      post victims_names_url, params: { victims_name: { A_brief_description_of_the_circumstances: @victims_name.A_brief_description_of_the_circumstances, Agency_responsible_for_death: @victims_name.Agency_responsible_for_death, Criminal_charges: @victims_name.Criminal_charges, Link_to_news_article_or_photo_of_official_document: @victims_name.Link_to_news_article_or_photo_of_official_document, VictimsAge: @victims_name.VictimsAge, VictimsGender: @victims_name.VictimsGender, VictimsRace: @victims_name.VictimsRace, armed/unarmed_status: @victims_name.armed/unarmed_status, city: @victims_name.city, county: @victims_name.county, date_of_incident: @victims_name.date_of_incident, state: @victims_name.state, street_address_of_incident: @victims_name.street_address_of_incident, symptoms_of_mental_illness: @victims_name.symptoms_of_mental_illness, url_of_image: @victims_name.url_of_image, zipcode: @victims_name.zipcode } }, as: :json
    end

    assert_response :created
  end

  test "should show victims_name" do
    get victims_name_url(@victims_name), as: :json
    assert_response :success
  end

  test "should update victims_name" do
    patch victims_name_url(@victims_name), params: { victims_name: { A_brief_description_of_the_circumstances: @victims_name.A_brief_description_of_the_circumstances, Agency_responsible_for_death: @victims_name.Agency_responsible_for_death, Criminal_charges: @victims_name.Criminal_charges, Link_to_news_article_or_photo_of_official_document: @victims_name.Link_to_news_article_or_photo_of_official_document, VictimsAge: @victims_name.VictimsAge, VictimsGender: @victims_name.VictimsGender, VictimsRace: @victims_name.VictimsRace, armed/unarmed_status: @victims_name.armed/unarmed_status, city: @victims_name.city, county: @victims_name.county, date_of_incident: @victims_name.date_of_incident, state: @victims_name.state, street_address_of_incident: @victims_name.street_address_of_incident, symptoms_of_mental_illness: @victims_name.symptoms_of_mental_illness, url_of_image: @victims_name.url_of_image, zipcode: @victims_name.zipcode } }, as: :json
    assert_response :success
  end

  test "should destroy victims_name" do
    assert_difference("VictimsName.count", -1) do
      delete victims_name_url(@victims_name), as: :json
    end

    assert_response :no_content
  end
end
