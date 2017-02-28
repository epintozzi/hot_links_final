class LinksController < ApplicationController

  def index
    @links = Link.hottest_links
    respond_to do |format|
      format.html { @links = @links.to_h }
      format.json { render json: @links }
    end
  end

end
