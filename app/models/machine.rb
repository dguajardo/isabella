class Machine < ActiveRecord::Base
has_many :requests
has_many :supplies,through: :requests
end
