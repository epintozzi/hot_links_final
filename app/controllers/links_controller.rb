class LinksController < ApplicationController

  def index
    @links = Link.where('created_at > ?', 24.hours.ago).group(:url).count.sort_by{ |k, v| v }.reverse.first(10).to_h
  end

end
