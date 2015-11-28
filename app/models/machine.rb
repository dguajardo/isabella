class Machine < ActiveRecord::Base
has_many :requests, through: :supplies
has_many :supplies,through: :requests
end
