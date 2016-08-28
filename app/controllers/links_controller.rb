class LinksController < ApplicationController
  def go
    @link = Link.find_by_in_url!(params[:in_url])
    redirect_to @link.out_url, :status => @link.http_status
  end
end