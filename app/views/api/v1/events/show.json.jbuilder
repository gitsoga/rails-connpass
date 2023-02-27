json.partial! 'api/v1/events/event', event: @event
json.users do
  json.array! @event.user, partial: 'api/v1/users/user', as: :user
end
