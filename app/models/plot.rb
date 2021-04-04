class Plot < ApplicationRecord
    belongs_to :goal # a plot achieves one main goal
    belongs_to :book  # a plot must belong to the book it is about
    validates_presence_of :description
end
