class Supply < ActiveRecord::Base
has_many :requests
has_many :machines, through: :requests
end
