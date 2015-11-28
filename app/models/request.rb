class Request < ActiveRecord::Base
  belongs_to :machine
  belongs_to :supply
end
