class Building < ApplicationRecord
	belongs_to :facility
	has_many :floor
	has_many :offer
end
