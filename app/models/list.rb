class List < ApplicationRecord
    has_one :destination, dependent: :destroy
    has_many :activities, dependent: :destroy
end
