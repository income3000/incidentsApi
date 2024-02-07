class Api::V1::VictimsController < ApplicationController
  before_action :set_victim, only: %i[ show update destroy ]

  # GET /victims
  def index
    @victims = Victim.all

    render json: @victims
  end

  # GET /victims/1
  def show
    render json: @victim
  end

  # POST /victims
  def create
    @victim = Victim.new(victim_params)

    if @victim.save
      render json: @victim, status: :created, location: @victim
    else
      render json: @victim.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /victims/1
  def update
    if @victim.update(victim_params)
      render json: @victim
    else
      render json: @victim.errors, status: :unprocessable_entity
    end
  end

  # DELETE /victims/1
  def destroy
    @victim.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_victim
      @victim = Victim.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def victim_params
      params.require(:victim).permit(:VictimsName, :VictimsAge, :VictimsGender, :VictimsRace, :url_of_image, :date_of_incident, :street_address_of_incident, :city, :state, :zipcode, :county, :Agency_responsible_for_death, :A_brief_description_of_the_circumstances, :Criminal_charges, :Link_to_news_article_or_photo_of_official_document, :symptoms_of_mental_illness)
    end
end
