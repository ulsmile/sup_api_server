class Record
  include Mongoid::Document
  include Mongoid::Timestamps
  field :record_id
  field :_id, type: String, default: -> { record_id }
  field :record_time
  field :board
  field :place
  field :distance
  field :datetime
  field :wind_speed
  field :weather
  field :temparature
  embedded_in :player
end
