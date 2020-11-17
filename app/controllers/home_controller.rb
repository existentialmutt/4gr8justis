class HomeController < ApplicationController
  def show
    @budgeted_tags = Tag.where.not(budget: nil)
    @unbudgeted_tags = Tag.where(budget: nil)
  end
end
