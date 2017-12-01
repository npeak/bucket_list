class List < ApplicationRecord
    has_one :destination
    has_many :activites
end
