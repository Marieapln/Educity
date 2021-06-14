class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
    # before_action :set_platforms, only: %i[home]
    # before_action :set_categories, only: %i[home]
    # before_action :set_subcategories, only: %i[home]

  def home; end
end
