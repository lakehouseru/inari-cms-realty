module Admin
  class FacilitiesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Facility.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Facility.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information

    def destroy_file
      facility = Facility.find(params[:facility_id])
      index = params[:index].to_i

      remain_files = facility.files
      deleted_file = remain_files.delete_at(index)
      deleted_file.try(:remove!)

      if remain_files.empty?
        facility.remove_files!
      else
        facility.files = remain_files
      end

      facility.save
      redirect_to edit_admin_facility_path(facility)
    end
  end
end
