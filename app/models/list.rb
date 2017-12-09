class List < ApplicationRecord
    has_one :destination dependent :destroy
    has_many :activites dependent :destroy
end
