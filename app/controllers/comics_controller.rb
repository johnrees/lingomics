class ComicsController < InheritedResources::Base
  def show
    @comic = Comic.find(params[:id])
    current_user.record_position(@comic) if current_user
  end
end
