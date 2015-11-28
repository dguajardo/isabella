json.array!(@shifts) do |shift|
  json.extract! shift, :id, :type_shift, :timestamp, :end_time, :timestamp, :user_id
  json.url shift_url(shift, format: :json)
end
