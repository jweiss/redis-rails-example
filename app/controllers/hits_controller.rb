class HitsController < ApplicationController
  
  def index
    Hit.increment
    render
  end

end
