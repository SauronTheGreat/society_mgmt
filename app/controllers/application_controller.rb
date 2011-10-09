class ApplicationController < ActionController::Base
  protect_from_forgery

  def javascript(*files)
     content_for(:head) { javascript_include_tag(*files) }
   end

end
