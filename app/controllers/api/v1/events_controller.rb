class Api::V1::EventsController < ApplicationController

    def index
        @event = Event.all()
    end

    def show
        @event = Event.find(params[:id])
    end
end