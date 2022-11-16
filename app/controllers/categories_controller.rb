class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: :splash

  def index; end

  def splash; end
end
