module Admin
  class OffersController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Offer.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Offer.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
    before_action :require_categories


    private

    def require_categories
      @offer_types = OfferType.all
      @building_types = BuildingType.all
      @facility = Facility.all
      @floor = Floor.all
      
    end

  end
end
