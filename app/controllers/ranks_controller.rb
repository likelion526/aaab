class RanksController < ApplicationController
  def index
    @ranks = User.all
  end

  def field
  end
end
