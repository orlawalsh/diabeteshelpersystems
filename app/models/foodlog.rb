class Foodlog < ApplicationRecord
	has_many :details, dependent: :destroy
end
