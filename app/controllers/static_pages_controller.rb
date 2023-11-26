class StaticPagesController < ApplicationController
  def root
    # Render template static_pages/root.html.erb
    render :root
  end
end
