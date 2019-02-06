class Course < ApplicationRecord
	has_many :subjects, dependent: :destroy
end
