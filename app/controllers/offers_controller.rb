class OffersController < ApplicationController

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new
    skill_name = params[:offer][:skill_name]
    @offer.skill = Skill.where(name: skill_name).first_or_create
    @offer.user = current_user
    @offer.save!
    redirect_to offers_path, notice: "The skill has been added to your profile"
  end

  def index
    @offers = current_user.offers
  end

  def offer_params
      params.require(:offer).permit(:skill_id, :user_id)
  end

end
