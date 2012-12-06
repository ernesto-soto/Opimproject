class DisplayEventsController < ApplicationController

def new
end	

def index
    @event = Event.paginate(page: params[:page])
end

end
