class Api::V1::EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destory]

    def index
        @event = Event.all()
    end

    def show
        @event = Event.includes([join_event: :user]).find(params[:id])
    end

    def new
    end

    def edit
    end

    def create
        @event = Event.new(event_params)
        if @event.save
        end
    end

    def update
        if @event.update(event_params)
        end
    end

    def destory
        @event.destory
    end

    private

    def set_event
        @event = Event.find(params[:id])
    end
end
