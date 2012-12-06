class EventsController < ApplicationController
 before_filter :signed_in_user
 before_filter :correct_user,   only: :destroy  


def new
  	@event = Event.new
  end


def create
    @event = current_user.events.build(params[:event])
    if @event.save
      flash[:success] = "Event created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

def index
    @users = Event.paginate(page: params[:page])
 end
end