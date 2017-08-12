class PagesController < ApplicationController
  def index
    @projects = Project.order('complete_date DESC').limit(6)
  end

  def contact  
  end

  def about
  end
end
