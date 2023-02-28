class Api::V1::EventsController < ApiController
  before_action :set_event, only: %i[update destory]

  def index
    @event = Event.all
  end

  def show
    @event = Event.includes([join_event: :user]).find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render json: { status: 'SUCCESS', data: @event }
    else
      render json: { status: 'ERROR', data: @event.errors }
    end
  end

  def update
    if @event.update(event_params)
      render json: { status: 'SUCCESS', data: @event }
    else
      render json: { status: 'ERROR', data: @event.errors }
    end
  end

  def destory
    @event.destory
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :create_user_id, :start_at, :end_at, :content)
  end
end
