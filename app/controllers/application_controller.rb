class ApplicationController < ActionController::Base
  protect_from_forgery
  protected

  def populate_properties_for_landlord
    landlord = Landlord.find(session[:landlord_id])
    @properties = Property.for(landlord).order 'address'
  end

  def ensure_list_for_current_user(list)
    if property.landlord != current_user
      render file: "#{Rails.root}/public/404", layout: false, status: :not_found and return
    end
  end
end

