class StaticPagesController < ApplicationController
  layout 'marketing'
  def root
    # Render template static_pages/root.html.erb
    render :root
  end
end
