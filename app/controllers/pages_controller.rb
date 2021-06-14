class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  # before_action :set_platforms, only: %i[home]
  # before_action :set_categories, only: %i[home]
  # before_action :set_subcategories, only: %i[home]

  # def home; end

  # private

  # def set_platforms
  #   @platforms = []
  #   Course.all.uniq(&:platform).each { |course| @platforms << course.platform.capitalize }
  # end

  # def set_categories
  #   @categories = []
  #   Course.all.uniq(&:category).each { |course| @categories << course.category.split.each(&:capitalize).join(' ') }
  # end

  # def set_subcategories
  #   @subcategories = []
  #   Course.all.uniq(&:subcategories).each { |course| course.subcategories.uniq.each{ |subcat| @subcategories << subcat.split.each(&:capitalize).join(' ') } }
  # end
end
