class PagesController < ApplicationController
  def about
  end

  def home
  	 	@listings = Listing.all.limit(4)
  end

  def contact
  end

  def search
  	if params[:search].present?
  		@listings = Listing.search params[:search], page: params[:page], per_page: 4
  	else
  		@listings = Listing.all
  	end
  end
end
