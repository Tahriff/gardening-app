class Parcel < ApplicationRecord
    validates :size_sqm, numericality: {greater_then: 0}


end