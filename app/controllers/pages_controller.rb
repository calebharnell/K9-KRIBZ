class PagesController < ApplicationController
  def home
  end
  def map
    @listings = Listing.all
  end
end
